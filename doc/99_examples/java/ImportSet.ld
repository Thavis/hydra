ImportSet: Import[]

JavaDef resolve(Name name) {
    for(Import import: this) {
        CanonicalPath path = ClassLoader.resolve(import, name);
        if (path!=null) return path;
    }
    error(name, '.error.unresolvedName');
    return null;
}
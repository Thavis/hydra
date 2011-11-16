JavaSource: Source
type: 'text/java'

package: CanonicalPath;
import: ImportSet;
typeDef: TypeDef*;

grammar = (
    'package' package ';'

    ( 'import' import ';' ) *

    ( typeDef ) +
)

void constrains(){
    if (typeDef[0].scope!=Scope.public)
        error(typeDef[0], '.error.nonPublicFirstClass')
    for (var i=1..typeDef.length)
    if (typeDef[i].scope!=Scope.private)
        error(typeDef[i], '.error.nonPrivateNextClass')
}





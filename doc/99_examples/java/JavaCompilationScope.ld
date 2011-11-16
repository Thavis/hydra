import ld.path.*
import ld.*

JavaCompilationScope: CompilationScope

sources: InputPath <
    extension = 'java';
>

target: OutputPath;

libraries: InputPath <
    extension = 'class';
>




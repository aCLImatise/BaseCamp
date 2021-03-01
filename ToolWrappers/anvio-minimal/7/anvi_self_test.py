from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Anvi_Self_Test_V0_1_0 = CommandToolBuilder(tool="anvi_self_test", base_command=["anvi-self-test"], inputs=[ToolInput(tag="in_suite", input_type=String(optional=True), prefix="--suite", doc=InputDocumentation(doc="A suite of component tests to execute. By default this\nprogram will execute the mini test of anvi'o, which\nwill help you to see if your computer and installation\nis able to perform some of the most basic anvi'o\noperations, such as generating an anvi'o contigs\ndatabase, profiling BAM files, or starting an\ninteractive interface. But you are welcome to execute\ndifferent component tests. Here is a list of what is\navailable to you: 'mini', 'metagenomics-full',\n'pangenomics', 'interactive-interface', 'metabolism',\n'alons-classifier', 'trnaseq' (default: mini)")), ToolInput(tag="in_output_dir", input_type=File(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="If you declare an outuput dir, all your data will be\nstored in there, instead of being stored in a\ntemporary directroy to be deleted once the tests are\ndone. This is particularly useful if you wish to play\nwith general anvi'o output files (default: None)")), ToolInput(tag="in_no_interactive", input_type=Boolean(optional=True), prefix="--no-interactive", doc=InputDocumentation(doc="Don't show anything interactive (if possible).\n(default: False)"))], outputs=[], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Self_Test_V0_1_0().translate("wdl")


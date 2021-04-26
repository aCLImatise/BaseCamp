from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Funannotate_Test_V0_1_0 = CommandToolBuilder(tool="funannotate_test", base_command=["funannotate", "test"], inputs=[ToolInput(tag="in_tests", input_type=Boolean(optional=True), prefix="--tests", doc=InputDocumentation(doc="Test sets to run. [all,clean,mask,predict,busco,rna-seq,annotate,compare]")), ToolInput(tag="in_cpus", input_type=Boolean(optional=True), prefix="--cpus", doc=InputDocumentation(doc="Number of cpus to use. Default: 2")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Keep output files")), ToolInput(tag="in_arguments", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/funannotate:1.8.7--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Funannotate_Test_V0_1_0().translate("wdl")


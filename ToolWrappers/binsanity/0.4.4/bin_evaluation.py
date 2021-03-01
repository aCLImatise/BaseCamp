from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bin_Evaluation_V0_1_0 = CommandToolBuilder(tool="bin_evaluation", base_command=["bin_evaluation"], inputs=[ToolInput(tag="in_specify_directory_containing_putative", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Specify the directory containing Putative genomes")), ToolInput(tag="in_specify_directory_containing_reference", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Specify directory containing reference genomes")), ToolInput(tag="in_specify_suffix_eg", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="specify suffix of bins e.g .fa, .fna, .fasta, etc.")), ToolInput(tag="in_var_3", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_4", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_of", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_files", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bin_Evaluation_V0_1_0().translate("wdl", allow_empty_container=True)


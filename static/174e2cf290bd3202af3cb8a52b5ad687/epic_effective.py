from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Directory, File

Epic_Effective_V0_1_0 = CommandToolBuilder(tool="epic_effective", base_command=["epic-effective"], inputs=[ToolInput(tag="in_read_length", input_type=Int(optional=True), prefix="--read-length", doc=InputDocumentation(doc="length of reads")), ToolInput(tag="in_nb_cpu", input_type=Int(optional=True), prefix="--nb-cpu", doc=InputDocumentation(doc="number of cores to use [default: 1]")), ToolInput(tag="in_tmpdir", input_type=Directory(optional=True), prefix="--tmpdir", doc=InputDocumentation(doc="temporary directory. Default is to use $TMPDIR if set, otherwise /tmp.")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="Fasta genome"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Epic_Effective_V0_1_0().translate("wdl", allow_empty_container=True)


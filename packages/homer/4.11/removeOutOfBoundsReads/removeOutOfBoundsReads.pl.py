from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, Directory, String

Removeoutofboundsreads_Pl_V0_1_0 = CommandToolBuilder(tool="removeOutOfBoundsReads.pl", base_command=["removeOutOfBoundsReads.pl"], inputs=[ToolInput(tag="in_chrom_sizes", input_type=Int(optional=True), prefix="-chromSizes", doc=InputDocumentation(doc="(specify the chromosome sizes, default: automatic)")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="-force", doc=InputDocumentation(doc="(force calculation of chromsome sizes for genome FASTA files)")), ToolInput(tag="in_tag_directory", input_type=Directory(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_genome", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Removeoutofboundsreads_Pl_V0_1_0().translate("wdl", allow_empty_container=True)


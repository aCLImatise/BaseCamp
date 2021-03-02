from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Pynnotator_Or_V0_1_0 = CommandToolBuilder(tool="pynnotator_or", base_command=["pynnotator", "or"], inputs=[ToolInput(tag="in_vcf_file_annotated", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="a VCF file to be annotated")), ToolInput(tag="in_hg_genome_build", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="or hg38  The genome build you want to use")), ToolInput(tag="in_options", input_type=String(), position=0, doc=InputDocumentation(doc="install test"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pynnotator_Or_V0_1_0().translate("wdl", allow_empty_container=True)


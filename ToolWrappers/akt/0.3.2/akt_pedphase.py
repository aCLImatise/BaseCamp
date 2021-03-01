from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Akt_Pedphase_V0_1_0 = CommandToolBuilder(tool="akt_pedphase", base_command=["akt", "pedphase"], inputs=[ToolInput(tag="in_pedigree", input_type=Boolean(optional=True), prefix="--pedigree", doc=InputDocumentation(doc="pedigree information in plink .fam format")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="output file name [stdout]")), ToolInput(tag="in_output_type", input_type=String(optional=True), prefix="--output-type", doc=InputDocumentation(doc="b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed VCF [v]")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of compression/decompression threads to use")), ToolInput(tag="in_exclude_chromosome", input_type=Boolean(optional=True), prefix="--exclude-chromosome", doc=InputDocumentation(doc="leave these chromosomes unphased (unphased lines will still be in in output)  eg. -x chrM,chrY"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="output file name [stdout]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Akt_Pedphase_V0_1_0().translate("wdl", allow_empty_container=True)


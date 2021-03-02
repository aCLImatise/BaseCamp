from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Agg_Genotype_V0_1_0 = CommandToolBuilder(tool="agg_genotype", base_command=["agg", "genotype"], inputs=[ToolInput(tag="in_regions", input_type=Int(optional=True), prefix="--regions", doc=InputDocumentation(doc="region to genotype eg. chr1 or chr20:5000000-6000000")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="output file name [stdout]")), ToolInput(tag="in_output_type", input_type=String(optional=True), prefix="--output-type", doc=InputDocumentation(doc="b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed VCF [v]")), ToolInput(tag="in_thread", input_type=Int(optional=True), prefix="--thread", doc=InputDocumentation(doc="number of threads [0]")), ToolInput(tag="in_chunk_one", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="output file name [stdout]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agg_Genotype_V0_1_0().translate("wdl", allow_empty_container=True)


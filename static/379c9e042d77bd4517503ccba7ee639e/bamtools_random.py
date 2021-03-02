from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Bamtools_Random_V0_1_0 = CommandToolBuilder(tool="bamtools_random", base_command=["bamtools", "random"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="the input BAM file [stdin]")), ToolInput(tag="in_list", input_type=File(optional=True), prefix="-list", doc=InputDocumentation(doc="the input BAM file list, one\nline per file")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="the output BAM file [stdout]")), ToolInput(tag="in_region", input_type=File(optional=True), prefix="-region", doc=InputDocumentation(doc="only pull random alignments\nfrom within this genomic region. Index\nfile is recommended for better\nperformance, and is used automatically if\nit exists. See 'bamtools help index' for\nmore details on creating one")), ToolInput(tag="in_force_compression", input_type=Boolean(optional=True), prefix="-forceCompression", doc=InputDocumentation(doc="if results are sent to stdout\n(like when piping to another tool),\ndefault behavior is to leave output\nuncompressed. Use this flag to override\nand force compression")), ToolInput(tag="in_number_alignments_grabnote", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="number of alignments to grab.\nNote - no duplicate checking is performed\n[10000]")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="-seed", doc=InputDocumentation(doc="random number generator seed\n(for repeatable results). Current time is\nused if no seed value is provided."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="the output BAM file [stdout]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamtools_Random_V0_1_0().translate("wdl", allow_empty_container=True)


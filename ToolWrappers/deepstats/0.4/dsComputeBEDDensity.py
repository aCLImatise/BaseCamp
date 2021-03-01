from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File, Int

Dscomputebeddensity_V0_1_0 = CommandToolBuilder(tool="dsComputeBEDDensity", base_command=["dsComputeBEDDensity"], inputs=[ToolInput(tag="in_input", input_type=Array(t=String(), optional=True), prefix="--input", doc=InputDocumentation(doc="BED files from which features density will be\ncalculated.")), ToolInput(tag="in_chrom_size", input_type=File(optional=True), prefix="--chromSize", doc=InputDocumentation(doc="A 2 columns tab-delimited file containing chromosome\nsizes, with one chromosome per line.")), ToolInput(tag="in_window_size", input_type=Int(optional=True), prefix="--windowSize", doc=InputDocumentation(doc="Size of the window used to binify the genome and\ncalculate bed files density. Default: 1000.")), ToolInput(tag="in_output", input_type=Array(t=String(), optional=True), prefix="--output", doc=InputDocumentation(doc="bedGraph file(s) output prefix name(s) ('.bedGraph' is\nautomatically added at the end of the given prefix,\none bedGraph per input file).\n")), ToolInput(tag="in_file_two_dot_bed", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_two", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dscomputebeddensity_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, Array, File, String

Multiintersectbed_V0_1_0 = CommandToolBuilder(tool="multiIntersectBed", base_command=["multiIntersectBed"], inputs=[ToolInput(tag="in_cluster", input_type=Boolean(optional=True), prefix="-cluster", doc=InputDocumentation(doc="Invoke Ryan Layers's clustering algorithm.")), ToolInput(tag="in_header", input_type=Boolean(optional=True), prefix="-header", doc=InputDocumentation(doc="Print a header line.\n(chrom/start/end + names of each file).")), ToolInput(tag="in_names", input_type=Boolean(optional=True), prefix="-names", doc=InputDocumentation(doc="A list of names (one/file) to describe each file in -i.\nThese names will be printed in the header line.")), ToolInput(tag="in_use_genome_file", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="Use genome file to calculate empty regions.\n- STRING.")), ToolInput(tag="in_empty", input_type=Boolean(optional=True), prefix="-empty", doc=InputDocumentation(doc="Report empty regions (i.e., start/end intervals w/o\nvalues in all files).\n- Requires the '-g FILE' parameter.")), ToolInput(tag="in_filler", input_type=Int(optional=True), prefix="-filler", doc=InputDocumentation(doc="Use TEXT when representing intervals having no value.\n- Default is '0', but you can use 'N/A' or any text.")), ToolInput(tag="in_examples", input_type=Boolean(optional=True), prefix="-examples", doc=InputDocumentation(doc="Show detailed usage examples.")), ToolInput(tag="in_i", input_type=Array(t=File(), optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_multi_inter", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Multiintersectbed_V0_1_0().translate("wdl", allow_empty_container=True)


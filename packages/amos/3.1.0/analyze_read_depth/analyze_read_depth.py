from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Analyze_Read_Depth_V0_1_0 = CommandToolBuilder(tool="analyze_read_depth", base_command=["analyze-read-depth"], inputs=[ToolInput(tag="in_verbose", input_type=String(optional=True), prefix="--verbose", doc=InputDocumentation(doc="a verbose output")), ToolInput(tag="in_flag_regions_val", input_type=String(optional=True), prefix="-x", doc=InputDocumentation(doc="Flag regions val x times the global average depth")), ToolInput(tag="in_cluster_regions_bp", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="Cluster regions within <dist> bp")), ToolInput(tag="in_only_use_list", input_type=File(optional=True), prefix="-I", doc=InputDocumentation(doc="Only use list of contigs iids in file for computing average")), ToolInput(tag="in_print_contig_iids", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Print contig IIDs instead of EIDs")), ToolInput(tag="in_just_compute_depth", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Just compute the depth. This returns a line with 4 values:\nthe minimum contig length considered, number of contigs\nsum of contig lengths and the average contig depth")), ToolInput(tag="in_only_use_contigs", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="Only use contigs >= len for computing average")), ToolInput(tag="in_print_depth_contig", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Print the depth for each contig")), ToolInput(tag="in_use_ungapped_length", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="Use ungapped length for reports")), ToolInput(tag="in_bank", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Analyze_Read_Depth_V0_1_0().translate("wdl", allow_empty_container=True)


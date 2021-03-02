from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, Boolean, String

Wgfast_Genbankqc_Species_V0_1_0 = CommandToolBuilder(tool="wgfast_genbankqc_species", base_command=["wgfast_genbankqc", "species"], inputs=[ToolInput(tag="in_unknowns", input_type=Int(optional=True), prefix="--unknowns", doc=InputDocumentation(doc="Maximum number of unknown bases (not A, T, C, G)")), ToolInput(tag="in_acceptable_deviations_median_number", input_type=Float(optional=True), prefix="--contigs", doc=InputDocumentation(doc="Acceptable deviations from median number of")), ToolInput(tag="in_distance", input_type=Float(optional=True), prefix="--distance", doc=InputDocumentation(doc="Acceptable deviations from median MASH distances")), ToolInput(tag="in_all", input_type=Float(optional=True), prefix="--all", doc=InputDocumentation(doc="Acceptable deviations for all metrics")), ToolInput(tag="in_metadata", input_type=Boolean(optional=True), prefix="--metadata", doc=InputDocumentation(doc="Get metadata for genome at PATH")), ToolInput(tag="in_processes", input_type=Int(optional=True), prefix="--processes", doc=InputDocumentation(doc="Number of processes")), ToolInput(tag="in_s__assemblysize", input_type=String(), position=0, doc=InputDocumentation(doc="-s, --assembly_size FLOAT  Acceptable deviations from median assembly size"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wgfast_Genbankqc_Species_V0_1_0().translate("wdl", allow_empty_container=True)


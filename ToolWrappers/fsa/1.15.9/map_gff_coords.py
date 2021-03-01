from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, Boolean, File

Map_Gff_Coords_V0_1_0 = CommandToolBuilder(tool="map_gff_coords", base_command=["map_gff_coords"], inputs=[ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="only look at features of particular type")), ToolInput(tag="in_data", input_type=Directory(optional=True), prefix="--data", doc=InputDocumentation(doc="path to map, genome and alignment files")), ToolInput(tag="in_map", input_type=Directory(optional=True), prefix="--map", doc=InputDocumentation(doc="path to map and genome files")), ToolInput(tag="in_align", input_type=Directory(optional=True), prefix="--align", doc=InputDocumentation(doc="path to alignment files")), ToolInput(tag="in_lazy", input_type=Boolean(optional=True), prefix="--lazy", doc=InputDocumentation(doc="warn, rather than die, if the subalignment can't be obtained")), ToolInput(tag="in_truncate", input_type=Boolean(optional=True), prefix="--truncate", doc=InputDocumentation(doc="truncate unmappable sequence (rather than skipping) and show truncated subalignment")), ToolInput(tag="in_force_entry", input_type=Boolean(optional=True), prefix="--force-entry", doc=InputDocumentation(doc="if a feature can't be mapped, then add an empty entry to the GFF file (rather than skipping it entirely); implies --lazy")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="report progress")), ToolInput(tag="in_source_genome", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_source_gff_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_target_genome", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/fsa:1.15.9--h8b12597_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Map_Gff_Coords_V0_1_0().translate("wdl")


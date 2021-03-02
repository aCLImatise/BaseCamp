from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Convert_Coords_V0_1_0 = CommandToolBuilder(tool="convert_coords", base_command=["convert_coords"], inputs=[ToolInput(tag="in_required_name_alignment", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc="(required) Name of file in which alignment is defined.")), ToolInput(tag="in_required_name_features", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="(required) Name of file in which features are defined (GFF).")), ToolInput(tag="in_index_coordinates_asdefined", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="Index of frame of reference for feature coordinates, as\ndefined in the GFF file.  Use an integer 1-N (if N seqs)\nor 0 to indicate the coordinate system of the alignment\nas a whole.  Default behavior is to match features with\nalignment sequences by name (feature by feature).")), ToolInput(tag="in_index_destination_frame", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="Index of destination frame of reference.  Default is 0\n(whole MSA).")), ToolInput(tag="in_positive_coordinate_offset", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="Positive coordinate offset.  This value will be\nadded to all coordinates.  Useful when\nthe alignment (or sequence) for which the coordinates\nare specified is a sub-alignment of yours.")), ToolInput(tag="in_negative_coordinate_offset", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="Negative coordinate offset.  This value will be\nsubtracted from all coordinates.  Useful when your\nalignment is a sub-alignment of the alignment (or\nsequence) for which the coordinates are specified.")), ToolInput(tag="in_phylipmpmssalignment_format_default", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="|PHYLIP|MPM|SS\nAlignment format.  Default is to guess format from file\ncontents\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convert_Coords_V0_1_0().translate("wdl", allow_empty_container=True)


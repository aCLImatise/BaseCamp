from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Agat_Sp_Filter_Record_By_Coordinates_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_filter_record_by_coordinates.pl", base_command=["agat_sp_filter_record_by_coordinates.pl"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input GTF/GFF file")), ToolInput(tag="in_coordinates", input_type=File(optional=True), prefix="--coordinates", doc=InputDocumentation(doc="String - tsv file containing the coordinates. Coordinates must\nbe one per line. Each line must contain 3 fields separated by a\ntabulation. Field1 is the sequence id Field2 is the start\ncoordinate (included) Field3 is the end coordinate (included)")), ToolInput(tag="in_exclude", input_type=String(optional=True), prefix="--exclude", doc=InputDocumentation(doc="Select only the features fully containined within the\ncoordinates, exclude the overlapping ones.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT.")), ToolInput(tag="in_agat_sp_filter_record_by_coordinates_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:")), ToolInput(tag="in_verbosity_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-h or --help"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT."))], container="quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Filter_Record_By_Coordinates_Pl_V0_1_0().translate("wdl")


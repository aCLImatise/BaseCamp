from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Bedpeannotatefrombed_V0_1_0 = CommandToolBuilder(tool="BedpeAnnotateFromBed", base_command=["BedpeAnnotateFromBed"], inputs=[ToolInput(tag="in_bed", input_type=File(optional=True), prefix="-bed", doc=InputDocumentation(doc="BED file that is used as annotation source.")), ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input BEDPE file. If unset, reads from STDIN.\nDefault value: ''")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output BEDPE file. If unset, writes to STDOUT.\nDefault value: ''")), ToolInput(tag="in_col", input_type=Int(optional=True), prefix="-col", doc=InputDocumentation(doc="Annotation source column (default: 4).\nDefault value: '4'")), ToolInput(tag="in_col_name", input_type=String(optional=True), prefix="-col_name", doc=InputDocumentation(doc="Name of the annotated column\nDefault value: 'ANNOTATION'")), ToolInput(tag="in_no_duplicates", input_type=Boolean(optional=True), prefix="-no_duplicates", doc=InputDocumentation(doc="Remove duplicate annotations if several intervals from 'in2' overlap.\nDefault value: 'false'")), ToolInput(tag="in_url_decode", input_type=Boolean(optional=True), prefix="-url_decode", doc=InputDocumentation(doc="Decode URL encoded characters.\nDefault value: 'false'")), ToolInput(tag="in_replace_underscore", input_type=Boolean(optional=True), prefix="-replace_underscore", doc=InputDocumentation(doc="Replaces underscores with spaces in the annotation column.\nDefault value: 'false'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output BEDPE file. If unset, writes to STDOUT.\nDefault value: ''"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedpeannotatefrombed_V0_1_0().translate("wdl", allow_empty_container=True)


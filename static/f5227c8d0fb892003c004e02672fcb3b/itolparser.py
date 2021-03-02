from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, Int, File, Boolean

Itolparser_V0_1_0 = CommandToolBuilder(tool="itolparser", base_command=["itolparser"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input table with categorical metadata in .tsv format\nunless otherwise specified")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output directory to write files to")), ToolInput(tag="in_delimiter", input_type=String(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="Field delimiter of input table (e.g. ' ', ',', ';')")), ToolInput(tag="in_margin", input_type=Int(optional=True), prefix="--margin", doc=InputDocumentation(doc="MARGIN\nSize of margin specified in iTOL file")), ToolInput(tag="in_strip_width", input_type=File(optional=True), prefix="--stripwidth", doc=InputDocumentation(doc="WIDTH\nStrip width specified in iTOL file")), ToolInput(tag="in_max_categories", input_type=Int(optional=True), prefix="--maxcategories", doc=InputDocumentation(doc="\# CATEGORIES\nMaximum number of categories to not get assigned to\nother")), ToolInput(tag="in_ignore", input_type=String(optional=True), prefix="--ignore", doc=InputDocumentation(doc="Comma-separated list of columns to ignore")), ToolInput(tag="in_continuous", input_type=String(optional=True), prefix="--continuous", doc=InputDocumentation(doc="Comma-separated list of columns to parse as continuous\n")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory to write files to"))], container="quay.io/biocontainers/itolparser:0.1.6--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Itolparser_V0_1_0().translate("wdl")


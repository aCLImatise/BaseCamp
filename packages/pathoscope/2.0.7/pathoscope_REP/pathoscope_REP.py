from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Directory, Boolean

Pathoscope_Rep_V0_1_0 = CommandToolBuilder(tool="pathoscope_REP", base_command=["pathoscope", "REP"], inputs=[ToolInput(tag="in_sam_tools_home", input_type=File(optional=True), prefix="-samtoolsHome", doc=InputDocumentation(doc="Full Path to samtools binary directory (Default: Uses\nsamtools in system path)")), ToolInput(tag="in_dbhost", input_type=String(optional=True), prefix="-dbhost", doc=InputDocumentation(doc="specify hostname running mysql if you want to use\nmysql instead of hash method in mapping gi to taxonomy\nid")), ToolInput(tag="in_db_port", input_type=Int(optional=True), prefix="-dbport", doc=InputDocumentation(doc="provide mysql server port if different from default\n(3306)")), ToolInput(tag="in_dbuser", input_type=String(optional=True), prefix="-dbuser", doc=InputDocumentation(doc="user name to access mysql")), ToolInput(tag="in_db_passwd", input_type=String(optional=True), prefix="-dbpasswd", doc=InputDocumentation(doc="provide password associate with user")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="-db", doc=InputDocumentation(doc="mysql pathoscope database name (default: pathodb)")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="-outDir", doc=InputDocumentation(doc="Output Directory")), ToolInput(tag="in_contig", input_type=Boolean(optional=True), prefix="--contig", doc=InputDocumentation(doc="Generate Contig Information (Needs samtools package\ninstalled)")), ToolInput(tag="in_sam_file", input_type=File(optional=True), prefix="-samfile", doc=InputDocumentation(doc="SAM Alignment file path")), ToolInput(tag="in_no_display_cut_off", input_type=Boolean(optional=True), prefix="--noDisplayCutoff", doc=InputDocumentation(doc="Do not cutoff display of genomes, even if it is\ninsignificant\n"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output Directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pathoscope_Rep_V0_1_0().translate("wdl", allow_empty_container=True)


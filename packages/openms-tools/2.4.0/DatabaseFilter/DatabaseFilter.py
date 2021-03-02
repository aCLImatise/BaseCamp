from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Databasefilter_V0_1_0 = CommandToolBuilder(tool="DatabaseFilter", base_command=["DatabaseFilter"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*        Input FASTA file, containing a database. (valid formats: 'fasta')")), ToolInput(tag="in_id", input_type=File(optional=True), prefix="-id", doc=InputDocumentation(doc="*        Input file containing identified peptides and proteins. (valid formats: 'idXML', 'mzid')")), ToolInput(tag="in_method", input_type=String(optional=True), prefix="-method", doc=InputDocumentation(doc="Switch between white-/blacklisting (default: 'whitelist' valid: 'whitelist', 'blacklist')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*       Output FASTA file where the reduced database will be written to. (valid formats: 'fasta')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="*       Output FASTA file where the reduced database will be written to. (valid formats: 'fasta')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Databasefilter_V0_1_0().translate("wdl", allow_empty_container=True)


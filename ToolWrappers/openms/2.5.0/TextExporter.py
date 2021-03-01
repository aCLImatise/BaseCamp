from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int

Textexporter_V0_1_0 = CommandToolBuilder(tool="TextExporter", base_command=["TextExporter"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*                                     Input file  (valid formats: 'featureXML', 'consensusXML', 'idXML', 'mzML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output file (mandatory for featureXML and idXML) (valid formats: 'csv')")), ToolInput(tag="in_separator", input_type=String(optional=True), prefix="-separator", doc=InputDocumentation(doc="The used separator character(s); if not set the 'tab' character is used")), ToolInput(tag="in_replacement", input_type=String(optional=True), prefix="-replacement", doc=InputDocumentation(doc="Used to replace occurrences of the separator in strings before writing, if 'quoting' is 'none' (default: '_')")), ToolInput(tag="in_quoting", input_type=String(optional=True), prefix="-quoting", doc=InputDocumentation(doc="Method for quoting of strings: 'none' for no quoting, 'double' for quoting with doubling of embedded quotes,\n'escape' for quoting with backslash-escaping of embedded quotes (default: 'none' valid: 'none', 'double', 'escape')")), ToolInput(tag="in_no_ids", input_type=Boolean(optional=True), prefix="-no_ids", doc=InputDocumentation(doc="Suppresses output of identification data.")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output file (mandatory for featureXML and idXML) (valid formats: 'csv')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Textexporter_V0_1_0().translate("wdl", allow_empty_container=True)


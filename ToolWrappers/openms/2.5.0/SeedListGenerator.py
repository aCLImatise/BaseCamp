from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Seedlistgenerator_V0_1_0 = CommandToolBuilder(tool="SeedListGenerator", base_command=["SeedListGenerator"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*         Input file (see below for details) (valid formats: 'mzML', 'idXML', 'featureXML', 'consensusXML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="<file(s)>*     Output file(s) (valid formats: 'featureXML')")), ToolInput(tag="in_use_peptide_mass", input_type=Boolean(optional=True), prefix="-use_peptide_mass", doc=InputDocumentation(doc="[idXML input only] Use the monoisotopic mass of the best peptide hit for the m/z position (default: use precursor m/z)")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="<file(s)>*     Output file(s) (valid formats: 'featureXML')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seedlistgenerator_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean

Isobaricanalyzer_V0_1_0 = CommandToolBuilder(tool="IsobaricAnalyzer", base_command=["IsobaricAnalyzer"], inputs=[ToolInput(tag="in_type", input_type=Int(optional=True), prefix="-type", doc=InputDocumentation(doc="Isobaric Quantitation method used in the experiment. (default: 'itraq4plex' valid: 'itraq4plex', 'itraq8plex', 'tmt10plex', 'tmt11plex', 'tmt16plex', 'tmt6plex')")), ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*        Input raw/picked data file  (valid formats: 'mzML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*       Output consensusXML file with quantitative information (valid formats: 'consensusXML')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="*       Output consensusXML file with quantitative information (valid formats: 'consensusXML')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Isobaricanalyzer_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Highresprecursormasscorrector_V0_1_0 = CommandToolBuilder(tool="HighResPrecursorMassCorrector", base_command=["HighResPrecursorMassCorrector"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*                                         Input file (centroided data) (valid formats: 'mzML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*                                        Output file (valid formats: 'mzML')")), ToolInput(tag="in_out_csv", input_type=File(optional=True), prefix="-out_csv", doc=InputDocumentation(doc="Optional CSV output file for results on 'nearest_peak' or 'highest_intensity_peak' algorithm (see corresponding subsection) containing columns: RT, uncorrectedMZ, correctedMZ, deltaMZ. (valid formats: 'csv')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="*                                        Output file (valid formats: 'mzML')")), ToolOutput(tag="out_out_csv", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_csv", type_hint=File()), doc=OutputDocumentation(doc="Optional CSV output file for results on 'nearest_peak' or 'highest_intensity_peak' algorithm (see corresponding subsection) containing columns: RT, uncorrectedMZ, correctedMZ, deltaMZ. (valid formats: 'csv')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Highresprecursormasscorrector_V0_1_0().translate("wdl", allow_empty_container=True)


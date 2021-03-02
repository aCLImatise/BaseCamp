from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Precursormasscorrector_V0_1_0 = CommandToolBuilder(tool="PrecursorMassCorrector", base_command=["PrecursorMassCorrector"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*                            Input mzML file containing the spectra. (valid formats: 'mzML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*                           Output mzML file. (valid formats: 'mzML')")), ToolInput(tag="in_feature_in", input_type=File(optional=True), prefix="-feature_in", doc=InputDocumentation(doc="Input featureXML file, containing features; if set, the MS/MS spectra precursor entries\nwill be matched to the feature m/z values if possible. (valid formats: 'featureXML')")), ToolInput(tag="in_precursor_mass_tolerance", input_type=Int(optional=True), prefix="-precursor_mass_tolerance", doc=InputDocumentation(doc="Maximal deviation in Th which is acceptable to be corrected;\nthis value should be set to the instruments selection window. (default: '1.5' min: '0.0')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="*                           Output mzML file. (valid formats: 'mzML')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Precursormasscorrector_V0_1_0().translate("wdl", allow_empty_container=True)


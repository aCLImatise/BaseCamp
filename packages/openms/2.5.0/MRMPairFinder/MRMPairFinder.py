from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Mrmpairfinder_V0_1_0 = CommandToolBuilder(tool="MRMPairFinder", base_command=["MRMPairFinder"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*          Input featureXML file containing the features of the MRM experiment spectra. (valid formats: 'featureXML')")), ToolInput(tag="in_pair_in", input_type=File(optional=True), prefix="-pair_in", doc=InputDocumentation(doc="*     Pair-file in the format: prec-m/z-light prec-m/z-heavy frag-m/z-light frag-m/z-heavy rt (valid formats: 'csv')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*         Output consensusXML file were the pairs of the features will be written to. (valid formats: 'consensusXML')")), ToolInput(tag="in_feature_out", input_type=File(optional=True), prefix="-feature_out", doc=InputDocumentation(doc="Output featureXML file, only written if given, skipped otherwise. (valid formats: 'featureXML')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="*         Output consensusXML file were the pairs of the features will be written to. (valid formats: 'consensusXML')")), ToolOutput(tag="out_feature_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_feature_out", type_hint=File()), doc=OutputDocumentation(doc="Output featureXML file, only written if given, skipped otherwise. (valid formats: 'featureXML')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mrmpairfinder_V0_1_0().translate("wdl", allow_empty_container=True)


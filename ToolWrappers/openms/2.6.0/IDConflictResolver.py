from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Idconflictresolver_V0_1_0 = CommandToolBuilder(tool="IDConflictResolver", base_command=["IDConflictResolver"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*                                           Input file (data annotated with identifications) (valid formats: 'featureXML', 'consensusXML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*                                          Output file (data with one peptide identification per feature) (valid formats: 'featureXML', 'consensusXML')")), ToolInput(tag="in_resolve_between_features", input_type=String(optional=True), prefix="-resolve_between_features", doc=InputDocumentation(doc="A map may contain multiple features with both identical (possibly modified i.e. not stripped) sequence and charge state. The feature with the 'highest intensity' is very likely the most reliable one. When switched on, the filter removes the sequence annotation from the lower intensity features, thereby resolving the multiplicity. Only the most reliable features for each (possibly modified i.e. not stripped) sequence maintain annotated with this peptide sequence. (default: 'off' valid: 'off', 'highest_intensity')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="*                                          Output file (data with one peptide identification per feature) (valid formats: 'featureXML', 'consensusXML')"))], container="quay.io/biocontainers/openms:2.6.0--h4afb90d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Idconflictresolver_V0_1_0().translate("wdl")


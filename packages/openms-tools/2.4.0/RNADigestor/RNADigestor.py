from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Rnadigestor_V0_1_0 = CommandToolBuilder(tool="RNADigestor", base_command=["RNADigestor"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*                 Input file containing RNA sequences (valid formats: 'fasta')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*                Output file containing sequence fragments (valid formats: 'fasta')")), ToolInput(tag="in_missed_cleavages", input_type=Int(optional=True), prefix="-missed_cleavages", doc=InputDocumentation(doc="The number of allowed missed cleavages (default: '1' min: '0')")), ToolInput(tag="in_min_length", input_type=Int(optional=True), prefix="-min_length", doc=InputDocumentation(doc="Minimum length of a fragment (default: '3')")), ToolInput(tag="in_max_length", input_type=Int(optional=True), prefix="-max_length", doc=InputDocumentation(doc="Maximum length of a fragment (default: '30')")), ToolInput(tag="in_enzyme", input_type=Int(optional=True), prefix="-enzyme", doc=InputDocumentation(doc="Digestion enzyme (RNase) (default: 'RNase_T1' valid: 'unspecific cleavage', 'no cleavage', 'RNase_T1')")), ToolInput(tag="in_unique", input_type=Boolean(optional=True), prefix="-unique", doc=InputDocumentation(doc="Report each unique sequence fragment only once")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="*                Output file containing sequence fragments (valid formats: 'fasta')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnadigestor_V0_1_0().translate("wdl", allow_empty_container=True)


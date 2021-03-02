from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Rnpxlsearch_V0_1_0 = CommandToolBuilder(tool="RNPxlSearch", base_command=["RNPxlSearch"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*                                    Input file  (valid formats: 'mzML')")), ToolInput(tag="in_database", input_type=File(optional=True), prefix="-database", doc=InputDocumentation(doc="*                              Input file  (valid formats: 'fasta')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*                                   Output file  (valid formats: 'idXML')")), ToolInput(tag="in_out_tsv", input_type=File(optional=True), prefix="-out_tsv", doc=InputDocumentation(doc="Tsv output file (valid formats: 'tsv')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="*                                   Output file  (valid formats: 'idXML')")), ToolOutput(tag="out_out_tsv", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_tsv", type_hint=File()), doc=OutputDocumentation(doc="Tsv output file (valid formats: 'tsv')"))], container="quay.io/biocontainers/openms:2.6.0--h4afb90d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnpxlsearch_V0_1_0().translate("wdl")


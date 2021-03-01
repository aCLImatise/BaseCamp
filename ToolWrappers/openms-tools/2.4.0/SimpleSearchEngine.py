from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Simplesearchengine_V0_1_0 = CommandToolBuilder(tool="SimpleSearchEngine", base_command=["SimpleSearchEngine"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*                                    Input file  (valid formats: 'mzML')")), ToolInput(tag="in_database", input_type=File(optional=True), prefix="-database", doc=InputDocumentation(doc="*                              Input file  (valid formats: 'fasta')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*                                   Output file  (valid formats: 'idXML')")), ToolInput(tag="in_enzyme", input_type=Int(optional=True), prefix="-enzyme", doc=InputDocumentation(doc="The enzyme used for peptide digestion. (default: 'Trypsin' valid: 'Arg-C/P', 'Trypsin', 'Lys-C/P', 'PepsinA', 'Arg-C', 'PepsinA + P', 'cyanogen-bromide', 'Clostripain/P', 'unspecific cleavage', 'Asp-N', 'Asp-N/B', 'Trypsin/P', 'V8-DE', 'Lys-C', 'Lys-N', 'CNBr', 'Formic_acid', 'Chymotrypsin', 'Chymotrypsin/P', 'no cleavage', 'TrypChymo', 'V8-E', 'leukocyte elastase', 'proline endopeptidase', 'Asp-N_ambic', 'proline-endopeptidase/HKR', 'Glu-C+P', '2-iodobenzoate', 'iodosobenzoate', 'staphylococcal protease/D', 'glutamyl endopeptidase', 'Alpha-lytic protease', 'elastase-trypsin-chymotrypsin')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="*                                   Output file  (valid formats: 'idXML')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simplesearchengine_V0_1_0().translate("wdl", allow_empty_container=True)


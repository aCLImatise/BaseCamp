from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Nucleicacidsearchengine_V0_1_0 = CommandToolBuilder(tool="NucleicAcidSearchEngine", base_command=["NucleicAcidSearchEngine"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*                                  Input file: spectra (valid formats: 'mzML')")), ToolInput(tag="in_database", input_type=File(optional=True), prefix="-database", doc=InputDocumentation(doc="*                            Input file: sequence database (valid formats: 'fasta')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*                                 Output file: mzTab (valid formats: 'mzTab')")), ToolInput(tag="in_id_out", input_type=File(optional=True), prefix="-id_out", doc=InputDocumentation(doc="Output file: idXML (for visualization in TOPPView) (valid formats: 'idXML')")), ToolInput(tag="in_lf_q_out", input_type=File(optional=True), prefix="-lfq_out", doc=InputDocumentation(doc="Output file: Targets for label-free quantification using FeatureFinderMetaboIdent ('id' input) (valid formats: 'tsv')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="*                                 Output file: mzTab (valid formats: 'mzTab')")), ToolOutput(tag="out_id_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_id_out", type_hint=File()), doc=OutputDocumentation(doc="Output file: idXML (for visualization in TOPPView) (valid formats: 'idXML')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nucleicacidsearchengine_V0_1_0().translate("wdl", allow_empty_container=True)


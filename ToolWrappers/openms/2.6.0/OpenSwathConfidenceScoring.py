from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Openswathconfidencescoring_V0_1_0 = CommandToolBuilder(tool="OpenSwathConfidenceScoring", base_command=["OpenSwathConfidenceScoring"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*            Input file (OpenSwath results) (valid formats: 'featureXML')")), ToolInput(tag="in_lib", input_type=File(optional=True), prefix="-lib", doc=InputDocumentation(doc="*           Assay library (valid formats: 'traML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*           Output file (results with confidence scores) (valid formats: 'featureXML')")), ToolInput(tag="in_traf_o", input_type=File(optional=True), prefix="-trafo", doc=InputDocumentation(doc="Retention time transformation (valid formats: 'trafoXML')")), ToolInput(tag="in_decoys", input_type=Int(optional=True), prefix="-decoys", doc=InputDocumentation(doc="Number of decoy assays to select from the library for every true assay (0 for 'all') (default: '1000' min: '0')")), ToolInput(tag="in_transitions", input_type=Int(optional=True), prefix="-transitions", doc=InputDocumentation(doc="Number of transitions per feature to consider (highest intensities first; 0 for 'all') (default: '6' min: '0')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="*           Output file (results with confidence scores) (valid formats: 'featureXML')"))], container="quay.io/biocontainers/openms:2.6.0--h4afb90d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Openswathconfidencescoring_V0_1_0().translate("wdl")


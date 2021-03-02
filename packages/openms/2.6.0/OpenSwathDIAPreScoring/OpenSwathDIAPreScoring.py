from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Float, Int, Boolean

Openswathdiaprescoring_V0_1_0 = CommandToolBuilder(tool="OpenSwathDIAPreScoring", base_command=["OpenSwathDIAPreScoring"], inputs=[ToolInput(tag="in_tr", input_type=File(optional=True), prefix="-tr", doc=InputDocumentation(doc="*                    Transition file (valid formats: 'traML')")), ToolInput(tag="in_swath_files", input_type=String(optional=True), prefix="-swath_files", doc=InputDocumentation(doc="*          Swath files that were used to extract the transitions. If present, SWATH specific scoring will be applied. (valid formats: 'mzML')")), ToolInput(tag="in_output_files", input_type=File(optional=True), prefix="-output_files", doc=InputDocumentation(doc="Output files. One per Swath input file. (valid formats: 'tsv')")), ToolInput(tag="in_min_upper_edge_dist", input_type=Float(optional=True), prefix="-min_upper_edge_dist", doc=InputDocumentation(doc="Minimal distance to the edge to still consider a precursor, in Thomson (only in SWATH) (default: '0.0')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[], container="quay.io/biocontainers/openms:2.6.0--h4afb90d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Openswathdiaprescoring_V0_1_0().translate("wdl")


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Boolean

Mssimulator_V0_1_0 = CommandToolBuilder(tool="MSSimulator", base_command=["MSSimulator"], inputs=[ToolInput(tag="in_in", input_type=String(optional=True), prefix="-in", doc=InputDocumentation(doc="*       Input protein sequences (valid formats: 'FASTA')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output: simulated MS raw (profile) data (valid formats: 'mzML')")), ToolInput(tag="in_out_pm", input_type=File(optional=True), prefix="-out_pm", doc=InputDocumentation(doc="Output: ground-truth picked (centroided) MS data (valid formats: 'mzML')")), ToolInput(tag="in_out_fm", input_type=File(optional=True), prefix="-out_fm", doc=InputDocumentation(doc="Output: ground-truth features (valid formats: 'featureXML')")), ToolInput(tag="in_out_cm", input_type=File(optional=True), prefix="-out_cm", doc=InputDocumentation(doc="Output: ground-truth features, grouping ESI charge variants of each parent peptide (valid formats: 'consensusXML')")), ToolInput(tag="in_out_lcm", input_type=File(optional=True), prefix="-out_lcm", doc=InputDocumentation(doc="Output: ground-truth features, grouping labeled variants (valid formats: 'consensusXML')")), ToolInput(tag="in_out_cnt_m", input_type=File(optional=True), prefix="-out_cntm", doc=InputDocumentation(doc="Output: ground-truth features caused by contaminants (valid formats: 'featureXML')")), ToolInput(tag="in_out_id", input_type=File(optional=True), prefix="-out_id", doc=InputDocumentation(doc="Output: ground-truth MS2 peptide identifications (valid formats: 'idXML')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mssimulator_V0_1_0().translate("wdl", allow_empty_container=True)


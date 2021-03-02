from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Float, Int, Boolean

Epifany_V0_1_0 = CommandToolBuilder(tool="Epifany", base_command=["Epifany"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*                            Input: identification results (valid formats: 'idXML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*                           Output: identification results with scored/grouped proteins (valid formats: 'idXML')")), ToolInput(tag="in_protein_fdr", input_type=String(optional=True), prefix="-protein_fdr", doc=InputDocumentation(doc="Additionally calculate the target-decoy FDR on protein-level based on the posteriors (default: 'false' valid: 'true', 'false')")), ToolInput(tag="in_greedy_group_resolution", input_type=String(optional=True), prefix="-greedy_group_resolution", doc=InputDocumentation(doc="Post-process inference output with greedy resolution of shared peptides based on the parent protein probabilities. Also adds the resolved ambiguity groups to output. (default: 'none' valid: 'none', 'remove_associations_only', 'remove_proteins_wo_evidence')")), ToolInput(tag="in_max_psms_extreme_probability", input_type=Float(optional=True), prefix="-max_psms_extreme_probability", doc=InputDocumentation(doc="Set PSMs with probability higher than this to this maximum probability. (default: '1.0')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Epifany_V0_1_0().translate("wdl", allow_empty_container=True)


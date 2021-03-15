from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Trinity_Gene_Splice_Modeler_Py_V0_1_0 = CommandToolBuilder(tool="Trinity_gene_splice_modeler.py", base_command=["Trinity_gene_splice_modeler.py"], inputs=[ToolInput(tag="in_trinity_fast_a", input_type=File(optional=True), prefix="--trinity_fasta", doc=InputDocumentation(doc="Trinity.fasta file (default: )")), ToolInput(tag="in_out_prefix", input_type=String(optional=True), prefix="--out_prefix", doc=InputDocumentation(doc="output prefix for fasta and gtf outputs (default:\ntrinity_genes)")), ToolInput(tag="in_incl_malign", input_type=File(optional=True), prefix="--incl_malign", doc=InputDocumentation(doc="include multiple alignment formatted output file\n(default: False)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="debug mode (default: False)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose mode (default: False)")), ToolInput(tag="in_no_squeeze", input_type=Boolean(optional=True), prefix="--no_squeeze", doc=InputDocumentation(doc="don't merge unbranched stretches of node identifiers\n(default: False)")), ToolInput(tag="in_no_refinement", input_type=Boolean(optional=True), prefix="--no_refinement", doc=InputDocumentation(doc="don't refine splice graph by further collapsing\nallelic variants (default: False)")), ToolInput(tag="in_incl_cdna", input_type=Boolean(optional=True), prefix="--incl_cdna", doc=InputDocumentation(doc="rewrite Trinity fasta file using simplified graph\nstructure (default: False)")), ToolInput(tag="in_incl_dot", input_type=Boolean(optional=True), prefix="--incl_dot", doc=InputDocumentation(doc="include dot file for gene graph (*warning* single dot\nfile per gene!! use sparingly) (default: False)")), ToolInput(tag="in_restrict_gene_id", input_type=String(optional=True), prefix="--restrict_gene_id", doc=InputDocumentation(doc="only process this gene (default: None)\n"))], outputs=[ToolOutput(tag="out_incl_malign", output_type=File(optional=True), selector=InputSelector(input_to_select="in_incl_malign", type_hint=File()), doc=OutputDocumentation(doc="include multiple alignment formatted output file\n(default: False)"))], container="quay.io/biocontainers/trinity:2.12.0--h5ef6573_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trinity_Gene_Splice_Modeler_Py_V0_1_0().translate("wdl")


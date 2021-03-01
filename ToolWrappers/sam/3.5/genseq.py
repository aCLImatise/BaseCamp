from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Genseq_V0_1_0 = CommandToolBuilder(tool="genseq", base_command=["genseq"], inputs=[ToolInput(tag="in_n_seq", input_type=Int(optional=True), prefix="-Nseq", doc=InputDocumentation(doc="number of sequences to generate")), ToolInput(tag="in_alphabet_for_sequences", input_type=Int(optional=True), prefix="-a", doc=InputDocumentation(doc="alphabet for sequences")), ToolInput(tag="in_track_prior", input_type=Boolean(optional=True), prefix="-trackprior", doc=InputDocumentation(doc="Dirichlet mixture OR")), ToolInput(tag="in_gen_prot_prior", input_type=Boolean(optional=True), prefix="-genprotprior", doc=InputDocumentation(doc="Protein mixture ((null)) OR")), ToolInput(tag="in_gene_hl_two_prior", input_type=Boolean(optional=True), prefix="-genehl2prior", doc=InputDocumentation(doc="EHL2 mixture ((null)) OR")), ToolInput(tag="in_mean_log_len", input_type=Boolean(optional=True), prefix="-meanloglen", doc=InputDocumentation(doc="Ave(log length) (  5.415100)")), ToolInput(tag="in_sd_log_len", input_type=Boolean(optional=True), prefix="-sdloglen", doc=InputDocumentation(doc="Std Dev (log length) (  1.036326)")), ToolInput(tag="in_option", input_type=String(optional=True), prefix="-option", doc=InputDocumentation(doc="")), ToolInput(tag="in_run_name", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genseq_V0_1_0().translate("wdl", allow_empty_container=True)


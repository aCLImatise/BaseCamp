from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Gaeval_V0_1_0 = CommandToolBuilder(tool="gaeval", base_command=["gaeval"], inputs=[ToolInput(tag="in_alpha", input_type=Boolean(optional=True), prefix="--alpha", doc=InputDocumentation(doc=": DOUBLE      introns confirmed, or % expected CDS length for\nsingle-exon genes; default is 0.6")), ToolInput(tag="in_beta", input_type=Boolean(optional=True), prefix="--beta", doc=InputDocumentation(doc=": DOUBLE       exon coverage; default is 0.3")), ToolInput(tag="in_gamma", input_type=Boolean(optional=True), prefix="--gamma", doc=InputDocumentation(doc=": DOUBLE      % expected 5' UTR length; default is 0.05")), ToolInput(tag="in_epsilon", input_type=Boolean(optional=True), prefix="--epsilon", doc=InputDocumentation(doc=": DOUBLE    % expected 3' UTR length; default is 0.05")), ToolInput(tag="in_exp_cds", input_type=Boolean(optional=True), prefix="--exp-cds", doc=InputDocumentation(doc=": INT       expected CDS length (in bp); default is 400")), ToolInput(tag="in_exp_five_put_r", input_type=Boolean(optional=True), prefix="--exp-5putr", doc=InputDocumentation(doc=": INT     expected 5' UTR length; default is 200")), ToolInput(tag="in_exp_three_put_r", input_type=Boolean(optional=True), prefix="--exp-3putr", doc=InputDocumentation(doc=": INT     expected 3' UTR length; default is 100")), ToolInput(tag="in_alignments_dot_gff_three", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_genes_dot_gff_three", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_more_genes_dot_gff_three", input_type=Int(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/aegean:0.16.0--hc2cb157_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gaeval_V0_1_0().translate("wdl")


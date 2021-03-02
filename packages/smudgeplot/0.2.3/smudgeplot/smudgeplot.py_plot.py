from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Smudgeplot_Py_Plot_V0_1_0 = CommandToolBuilder(tool="smudgeplot.py_plot", base_command=["smudgeplot.py", "plot"], inputs=[ToolInput(tag="in_pattern_used_name", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="The pattern used to name the output (smudgeplot).")), ToolInput(tag="in_remove_kmer_pairs", input_type=String(optional=True), prefix="-q", doc=InputDocumentation(doc="Remove kmer pairs with coverage over the specified\nquantile; (default none).")), ToolInput(tag="in_lower_boundary_used", input_type=Int(optional=True), prefix="-L", doc=InputDocumentation(doc="The lower boundary used when dumping kmers (default\nmin(total_pair_cov) / 2).")), ToolInput(tag="in_expected_haploid_coverage", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="The expected haploid coverage (default estimated from\ndata).")), ToolInput(tag="in_title", input_type=String(optional=True), prefix="--title", doc=InputDocumentation(doc="name printed at the top of the smudgeplot (default\nnone).")), ToolInput(tag="in_nbins", input_type=Int(optional=True), prefix="-nbins", doc=InputDocumentation(doc="The number of nbins used for smudgeplot matrix (nbins\nx nbins) (default autodetection).")), ToolInput(tag="in_the_length_kmer", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="The length of the kmer.")), ToolInput(tag="in_homozygous", input_type=Boolean(optional=True), prefix="--homozygous", doc=InputDocumentation(doc="Assume no heterozygosity in the genome - plotting a\nparalog structure; (default False).\n")), ToolInput(tag="in_in_file", input_type=String(), position=0, doc=InputDocumentation(doc="name of the input tsv file with covarages (default\n'coverages_2.tsv').'"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smudgeplot_Py_Plot_V0_1_0().translate("wdl", allow_empty_container=True)


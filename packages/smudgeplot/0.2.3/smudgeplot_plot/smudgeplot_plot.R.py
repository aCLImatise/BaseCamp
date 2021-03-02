from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int

Smudgeplot_Plot_R_V0_1_0 = CommandToolBuilder(tool="smudgeplot_plot.R", base_command=["smudgeplot_plot.R"], inputs=[ToolInput(tag="in_homozygous", input_type=Boolean(optional=True), prefix="--homozygous", doc=InputDocumentation(doc="Assume no heterozygosity in the genome - plotting a\nparalog structure; [default FALSE]")), ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="name of the input tsv file with covarages [default\n'coverages_2.tsv']")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="name pattern used for the output files\n(OUTPUT_smudgeplot.png, OUTPUT_summary.txt,\nOUTPUT_warrnings.txt) [default 'smudgeplot']")), ToolInput(tag="in_title", input_type=String(optional=True), prefix="--title", doc=InputDocumentation(doc="name printed at the top of the smudgeplot [default\nnone]")), ToolInput(tag="in_quantile_filt", input_type=String(optional=True), prefix="--quantile_filt", doc=InputDocumentation(doc="Remove kmer pairs with coverage over the specified\nquantile; [default none]")), ToolInput(tag="in_n_cov", input_type=String(optional=True), prefix="--n_cov", doc=InputDocumentation(doc="the haploid coverage of the sequencing data [default\ninference from data]")), ToolInput(tag="in_low_cut_off", input_type=Int(optional=True), prefix="--low_cutoff", doc=InputDocumentation(doc="the lower boundary used when dumping kmers [default\nmin(total_pair_cov) / 2]")), ToolInput(tag="in_nbins", input_type=Int(optional=True), prefix="-nbins", doc=InputDocumentation(doc="the number of nbins used for smudgeplot matrix (nbins\nx nbins) [default autodetection]")), ToolInput(tag="in_km_er_size", input_type=Int(optional=True), prefix="--kmer_size", doc=InputDocumentation(doc="The kmer size used to calculate kmer spectra [default\n21]\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smudgeplot_Plot_R_V0_1_0().translate("wdl", allow_empty_container=True)


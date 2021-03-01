from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Plot_Circos_Plot_Py_V0_1_0 = CommandToolBuilder(tool="plot_circos_plot.py", base_command=["plot_circos_plot.py"], inputs=[ToolInput(tag="in_summary", input_type=File(optional=True), prefix="--summary", doc=InputDocumentation(doc="Plot only significant interactions that appear in the\nsummary file. (default: None)")), ToolInput(tag="in_region", input_type=Int(optional=True), prefix="--region", doc=InputDocumentation(doc="Split the genome to windows of this size. (default:\n200)")), ToolInput(tag="in_srn_as", input_type=Boolean(optional=True), prefix="--sRNAs", doc=InputDocumentation(doc="Color the lines going to or coming from sRNAs in\norange. Must be used with ec_dir. (default: False)")), ToolInput(tag="in_known", input_type=File(optional=True), prefix="--known", doc=InputDocumentation(doc="Use this file to color the known interactions in red.\nMust give --refseq_dir as well. (default: None)")), ToolInput(tag="in_refseq_dir", input_type=String(optional=True), prefix="--refseq_dir", doc=InputDocumentation(doc="RefSeq dir of organism to get the gene description\nfrom. Should be given if --known is given. (default:\n/home/users/assafp/EC/)")), ToolInput(tag="in_ec_dir", input_type=String(optional=True), prefix="--ec_dir", doc=InputDocumentation(doc="EcoCyc data dir, used to map the regions to genes. If\nnot given only the regions will be reported (default:\nNone)")), ToolInput(tag="in_chr_n", input_type=String(optional=True), prefix="--chrn", doc=InputDocumentation(doc="Name of chromosome to plot. (default: chr)")), ToolInput(tag="in_print_chr", input_type=String(optional=True), prefix="--print_chr", doc=InputDocumentation(doc="Name of chromosome in circos. (default: ecmain)")), ToolInput(tag="in_min_interactions", input_type=Int(optional=True), prefix="--min_interactions", doc=InputDocumentation(doc="Minimum number of interactions between two regions to\nplot. (default: 100)")), ToolInput(tag="in_ec_chr_list", input_type=File(optional=True), prefix="--EC_chrlist", doc=InputDocumentation(doc="A comma separated dictionary of chromosome names from\nthe EcoCyc names to the bam file names. The names in\nthe bam file should be the same as the UCSC genome\nbrowser (they will be printed). (default:\nCOLI-K12,chr)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plot_Circos_Plot_Py_V0_1_0().translate("wdl", allow_empty_container=True)


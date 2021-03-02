from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Peakranger_Bcp_V0_1_0 = CommandToolBuilder(tool="peakranger_bcp", base_command=["peakranger", "bcp"], inputs=[ToolInput(tag="in_arg_data_file", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="[ --data ] arg               data file")), ToolInput(tag="in_arg_control_file", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[ --control ] arg            control file")), ToolInput(tag="in_format", input_type=File(optional=True), prefix="--format", doc=InputDocumentation(doc="the format of the data file, can be one of :\nbowtie, sam, bam and bed")), ToolInput(tag="in_arg_output_location", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --output ] arg             the output location")), ToolInput(tag="in_generate_html_reports", input_type=Boolean(optional=True), prefix="--report", doc=InputDocumentation(doc="generate html reports")), ToolInput(tag="in_plot_region", input_type=Int(optional=True), prefix="--plot_region", doc=InputDocumentation(doc="(=6000)       the length of the snapshort regions in the")), ToolInput(tag="in_arg_value_cutoff", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="[ --pval ] arg (=0.0001)     p value cut-off")), ToolInput(tag="in_win_size", input_type=Int(optional=True), prefix="--win_size", doc=InputDocumentation(doc="(=500)           sliding window size")), ToolInput(tag="in_arg_read_length", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="[ --ext_length ] arg (=200)  read extension length")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="show progress")), ToolInput(tag="in__geneannotfile_arg", input_type=String(), position=0, doc=InputDocumentation(doc="--gene_annot_file arg           the gene annotation file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Peakranger_Bcp_V0_1_0().translate("wdl", allow_empty_container=True)


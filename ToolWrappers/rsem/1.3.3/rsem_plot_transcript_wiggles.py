from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Rsem_Plot_Transcript_Wiggles_V0_1_0 = CommandToolBuilder(tool="rsem_plot_transcript_wiggles", base_command=["rsem-plot-transcript-wiggles"], inputs=[ToolInput(tag="in_gene_list", input_type=Boolean(optional=True), prefix="--gene-list", doc=InputDocumentation(doc="The input-list is a list of gene ids. (Default: off)")), ToolInput(tag="in_transcript_list", input_type=Boolean(optional=True), prefix="--transcript-list", doc=InputDocumentation(doc="The input-list is a list of transcript ids. This option can only be\nturned on if allele-specific expression is calculated. (Default:\noff)")), ToolInput(tag="in_show_unique", input_type=Boolean(optional=True), prefix="--show-unique", doc=InputDocumentation(doc="Show the wiggle plots as stacked bar plots. See description section\nfor details. (Default: off)")), ToolInput(tag="in_num_threads", input_type=Int(optional=True), prefix="--num-threads", doc=InputDocumentation(doc="Set the number of threads we can use. (Default: 1)")), ToolInput(tag="in_memory_per_thread", input_type=String(optional=True), prefix="--memory-per-thread", doc=InputDocumentation(doc="Set the maximum allowable memory per thread. <string> represents the\nmemory and accepts suffices 'K/M/G'. (Default: 1G)")), ToolInput(tag="in_sample_name", input_type=String(), position=0, doc=InputDocumentation(doc="The name of the sample analyzed.")), ToolInput(tag="in_input_list", input_type=String(), position=1, doc=InputDocumentation(doc="A list of transcript ids or gene ids. But it cannot be a mixture of\ntranscript & gene ids. Each id occupies one line without extra\nspaces."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsem_Plot_Transcript_Wiggles_V0_1_0().translate("wdl", allow_empty_container=True)


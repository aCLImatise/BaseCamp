from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Tandem_Genotypes_Plot_V0_1_0 = CommandToolBuilder(tool="tandem_genotypes_plot", base_command=["tandem-genotypes-plot"], inputs=[ToolInput(tag="in_rows", input_type=Int(optional=True), prefix="--rows", doc=InputDocumentation(doc="arrange the graphs in this many rows (default=4)")), ToolInput(tag="in_cols", input_type=Int(optional=True), prefix="--cols", doc=InputDocumentation(doc="arrange the graphs in this many columns (default=4)")), ToolInput(tag="in_num", input_type=Int(optional=True), prefix="--num", doc=InputDocumentation(doc="graph the top NUM repeat regions (default=ROWS*COLS)")), ToolInput(tag="in_sample", input_type=Int(optional=True), prefix="--sample", doc=InputDocumentation(doc="select SAMPLE-th sample to plot (default=1)")), ToolInput(tag="in_pointsize", input_type=Int(optional=True), prefix="--pointsize", doc=InputDocumentation(doc="text size (default=8)")), ToolInput(tag="in_reads", input_type=File(optional=True), prefix="--reads", doc=InputDocumentation(doc="show expected coverage for FASTA or FASTQ reads")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="show more details")), ToolInput(tag="in_tandem_genotypes_dot_txt", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_dot_pdf", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/tandem-genotypes:1.8.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tandem_Genotypes_Plot_V0_1_0().translate("wdl")


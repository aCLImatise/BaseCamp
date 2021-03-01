from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, Int, String, File, Boolean

Nanoraw_Plot_Correction_V0_1_0 = CommandToolBuilder(tool="nanoraw_plot_correction", base_command=["nanoraw", "plot_correction"], inputs=[ToolInput(tag="in_fast_five_based_irs", input_type=Array(t=Int(), optional=True), prefix="--fast5-basedirs", doc=InputDocumentation(doc="Directories containing fast5 files.")), ToolInput(tag="in_region_type", input_type=String(optional=True), prefix="--region-type", doc=InputDocumentation(doc="Region to plot within each read. Choices are: random\n(default), start, end.")), ToolInput(tag="in_corrected_group", input_type=Int(optional=True), prefix="--corrected-group", doc=InputDocumentation(doc="FAST5 group to access/plot created by\ngenome_resquiggle script. Default:\nRawGenomeCorrected_000")), ToolInput(tag="in_base_call_subgroup", input_type=Int(optional=True), prefix="--basecall-subgroup", doc=InputDocumentation(doc="FAST5 subgroup (under Analyses/[corrected-group])\nwhere individual template or complement read is\nstored. Default: BaseCalled_template")), ToolInput(tag="in_pdf_filename", input_type=File(optional=True), prefix="--pdf-filename", doc=InputDocumentation(doc="PDF filename to store plot(s). Default:\nNanopore_genome_correction.pdf")), ToolInput(tag="in_num_reads", input_type=Int(optional=True), prefix="--num-reads", doc=InputDocumentation(doc="Number of reads to plot (one region per read).\nDefault: 10")), ToolInput(tag="in_num_obs", input_type=Int(optional=True), prefix="--num-obs", doc=InputDocumentation(doc="Number of observations to plot in each region.\nDefault: 500")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Don't print status information."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nanoraw_Plot_Correction_V0_1_0().translate("wdl", allow_empty_container=True)


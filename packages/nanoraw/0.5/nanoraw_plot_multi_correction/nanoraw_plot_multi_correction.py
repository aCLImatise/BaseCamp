from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, Int, String, File, Boolean

Nanoraw_Plot_Multi_Correction_V0_1_0 = CommandToolBuilder(tool="nanoraw_plot_multi_correction", base_command=["nanoraw", "plot_multi_correction"], inputs=[ToolInput(tag="in_fast_five_based_irs", input_type=Array(t=Int(), optional=True), prefix="--fast5-basedirs", doc=InputDocumentation(doc="Directories containing fast5 files.")), ToolInput(tag="in_corrected_group", input_type=Int(optional=True), prefix="--corrected-group", doc=InputDocumentation(doc="FAST5 group to access/plot created by\ngenome_resquiggle script. Default:\nRawGenomeCorrected_000")), ToolInput(tag="in_base_call_subgroups", input_type=Array(t=String(), optional=True), prefix="--basecall-subgroups", doc=InputDocumentation(doc="FAST5 subgroup (under Analyses/[corrected-group])\nwhere individual template and/or complement reads are\nstored. Default: ['BaseCalled_template']")), ToolInput(tag="in_pdf_filename", input_type=File(optional=True), prefix="--pdf-filename", doc=InputDocumentation(doc="PDF filename to store plot(s). Default:\nNanopore_genome_multiread_correction.pdf")), ToolInput(tag="in_genome_locations", input_type=Array(t=String(), optional=True), prefix="--genome-locations", doc=InputDocumentation(doc="Plot signal at specified genomic locations. Format\nlocations as 'chrm:position[:strand]\n[chrm2:position2[:strand2] ...]' (strand not\napplicable for all applications)")), ToolInput(tag="in_include_original_base_calls", input_type=Boolean(optional=True), prefix="--include-original-basecalls", doc=InputDocumentation(doc="Iclude original basecalls in plots.")), ToolInput(tag="in_num_reads_per_plot", input_type=Int(optional=True), prefix="--num-reads-per-plot", doc=InputDocumentation(doc="Number of reads to plot per genomic region. Default: 5")), ToolInput(tag="in_num_regions", input_type=Int(optional=True), prefix="--num-regions", doc=InputDocumentation(doc="Number of regions to plot. Default: 10")), ToolInput(tag="in_num_obs", input_type=Int(optional=True), prefix="--num-obs", doc=InputDocumentation(doc="Number of observations to plot in each region.\nDefault: 500")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Don't print status information."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nanoraw_Plot_Multi_Correction_V0_1_0().translate("wdl", allow_empty_container=True)


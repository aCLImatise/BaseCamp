from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, Int, String, File, Boolean

Tombo_Plot_Multi_Correction_V0_1_0 = CommandToolBuilder(tool="tombo_plot_multi_correction", base_command=["tombo", "plot_multi_correction"], inputs=[ToolInput(tag="in_fast_five_based_irs", input_type=Array(t=Int(), optional=True), prefix="--fast5-basedirs", doc=InputDocumentation(doc="Directories containing fast5 files.")), ToolInput(tag="in_genome_locations", input_type=Array(t=String(), optional=True), prefix="--genome-locations", doc=InputDocumentation(doc="Genomic locations at which to plot signal. Format\nlocations as 'chrm:position[:strand]\n[chrm2:position2[:strand2] ...]' (strand not\napplicable for all applications)")), ToolInput(tag="in_num_regions", input_type=Int(optional=True), prefix="--num-regions", doc=InputDocumentation(doc="Number of regions to plot. Default: 10")), ToolInput(tag="in_num_reads", input_type=Int(optional=True), prefix="--num-reads", doc=InputDocumentation(doc="Number of reads to plot. Default: 5")), ToolInput(tag="in_num_obs", input_type=Int(optional=True), prefix="--num-obs", doc=InputDocumentation(doc="Number of observations to plot. Default: 500")), ToolInput(tag="in_pdf_filename", input_type=File(optional=True), prefix="--pdf-filename", doc=InputDocumentation(doc="PDF filename to store plot(s). Default:\ntombo_results.multi_corrected.pdf")), ToolInput(tag="in_include_original_base_calls", input_type=Boolean(optional=True), prefix="--include-original-basecalls", doc=InputDocumentation(doc="Include original basecalls in plots.")), ToolInput(tag="in_corrected_group", input_type=Int(optional=True), prefix="--corrected-group", doc=InputDocumentation(doc="FAST5 group created by resquiggle command. Default:\nRawGenomeCorrected_000")), ToolInput(tag="in_base_call_subgroups", input_type=Array(t=String(), optional=True), prefix="--basecall-subgroups", doc=InputDocumentation(doc="FAST5 subgroup(s) (under Analyses/[corrected-group])\ncontaining basecalls. Default: ['BaseCalled_template']")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Don't print status information."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tombo_Plot_Multi_Correction_V0_1_0().translate("wdl", allow_empty_container=True)


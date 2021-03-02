from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Array, Int, String, Boolean

Tombo_Text_Output_Signif_Sequence_Context_V0_1_0 = CommandToolBuilder(tool="tombo_text_output_signif_sequence_context", base_command=["tombo", "text_output", "signif_sequence_context"], inputs=[ToolInput(tag="in_statistics_filename", input_type=File(optional=True), prefix="--statistics-filename", doc=InputDocumentation(doc="File to save/load genomic base anchored statistics.")), ToolInput(tag="in_genome_fast_a", input_type=File(optional=True), prefix="--genome-fasta", doc=InputDocumentation(doc="FASTA file used to re-squiggle. For faster sequence\naccess.")), ToolInput(tag="in_fast_five_based_irs", input_type=Array(t=Int(), optional=True), prefix="--fast5-basedirs", doc=InputDocumentation(doc="Directories containing fast5 files.")), ToolInput(tag="in_num_regions", input_type=Int(optional=True), prefix="--num-regions", doc=InputDocumentation(doc="Number of regions to plot. Default: 100")), ToolInput(tag="in_num_bases", input_type=Int(optional=True), prefix="--num-bases", doc=InputDocumentation(doc="Number of bases to plot/output. Default: 15")), ToolInput(tag="in_sequences_filename", input_type=File(optional=True), prefix="--sequences-filename", doc=InputDocumentation(doc="File for sequences from selected regions. Sequences\nwill be stored in FASTA format. Default:\ntombo_results.significant_regions.fasta.")), ToolInput(tag="in_corrected_group", input_type=Int(optional=True), prefix="--corrected-group", doc=InputDocumentation(doc="FAST5 group created by resquiggle command. Default:\nRawGenomeCorrected_000")), ToolInput(tag="in_base_call_subgroups", input_type=Array(t=String(), optional=True), prefix="--basecall-subgroups", doc=InputDocumentation(doc="FAST5 subgroup(s) (under /Analyses/[--basecall-\ngroup]/) containing basecalls and created within\n[--corrected-group] containing re-squiggle results.\nDefault: ['BaseCalled_template']")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Don't print status information."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tombo_Text_Output_Signif_Sequence_Context_V0_1_0().translate("wdl", allow_empty_container=True)


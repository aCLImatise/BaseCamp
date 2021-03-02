from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Float, Int

Ribotricer_Learn_Cutoff_V0_1_0 = CommandToolBuilder(tool="ribotricer_learn_cutoff", base_command=["ribotricer", "learn-cutoff"], inputs=[ToolInput(tag="in_ribo_bams", input_type=File(optional=True), prefix="--ribo_bams", doc=InputDocumentation(doc="Path(s) to Ribo-seq BAM file separated by")), ToolInput(tag="in_rna_t_svs", input_type=File(optional=True), prefix="--rna_tsvs", doc=InputDocumentation(doc="Path(s) to RNA-seq *_translating_ORFs.tsv\nfile separated by comma")), ToolInput(tag="in_ribot_ricer_index", input_type=File(optional=True), prefix="--ribotricer_index", doc=InputDocumentation(doc="Path to the index file of ribotricer This\nfile should be generated using ribotricer\nprepare-orfs (required for BAM input)")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Prefix to output file")), ToolInput(tag="in_filter_by_tx_annotation", input_type=String(optional=True), prefix="--filter_by_tx_annotation", doc=InputDocumentation(doc="transcript_type to filter regions by\n[default: protein_coding]")), ToolInput(tag="in_phase_score_cut_off", input_type=Float(optional=True), prefix="--phase_score_cutoff", doc=InputDocumentation(doc="Phase score cutoff for determining active\ntranslation (required for BAM input)\n[default: 0.428571428571]")), ToolInput(tag="in_min_valid_codons", input_type=Int(optional=True), prefix="--min_valid_codons", doc=InputDocumentation(doc="Minimum number of codons with non-zero reads\nfor determining active translation (required\nfor BAM input)  [default: 5]")), ToolInput(tag="in_sampling_ratio", input_type=Float(optional=True), prefix="--sampling_ratio", doc=InputDocumentation(doc="Number of protein coding regions to sample\nper bootstrap  [default: 0.33]")), ToolInput(tag="in_n_bootstraps", input_type=Int(optional=True), prefix="--n_bootstraps", doc=InputDocumentation(doc="Number of bootstraps  [default: 20000]"))], outputs=[ToolOutput(tag="out_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_prefix", type_hint=File()), doc=OutputDocumentation(doc="Prefix to output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ribotricer_Learn_Cutoff_V0_1_0().translate("wdl", allow_empty_container=True)


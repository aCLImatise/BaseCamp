from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Directory

Aquila_Stlfr_Step1_V0_1_0 = CommandToolBuilder(tool="Aquila_stLFR_step1", base_command=["Aquila_stLFR_step1"], inputs=[ToolInput(tag="in_fast_q_file", input_type=File(optional=True), prefix="--fastq_file", doc=InputDocumentation(doc="Required parameter; stLFR FASTQ file with paired reads")), ToolInput(tag="in_bam_file", input_type=File(optional=True), prefix="--bam_file", doc=InputDocumentation(doc="Required parameter; BAM file, called by bwa mem")), ToolInput(tag="in_vcf_file", input_type=File(optional=True), prefix="--vcf_file", doc=InputDocumentation(doc="Required parameter; VCF file, called by FreeBayes")), ToolInput(tag="in_chr_start", input_type=Int(optional=True), prefix="--chr_start", doc=InputDocumentation(doc="chromosome start from, default = 1")), ToolInput(tag="in_chr_end", input_type=Int(optional=True), prefix="--chr_end", doc=InputDocumentation(doc="chromosome end by,default = 23")), ToolInput(tag="in_sample_name", input_type=Int(optional=True), prefix="--sample_name", doc=InputDocumentation(doc="Required parameter; sample name you can define, for\nexample, S12878")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out_dir", doc=InputDocumentation(doc="Directory to store assembly results, default =\n./Assembly_results")), ToolInput(tag="in_uniq_map_dir", input_type=Directory(optional=True), prefix="--uniq_map_dir", doc=InputDocumentation(doc="Required Parameter; Directory for 100-mer uniqness,\nrun ./install to download it")), ToolInput(tag="in_num_threads", input_type=Int(optional=True), prefix="--num_threads", doc=InputDocumentation(doc="number of threads, default = 8 (recommended)")), ToolInput(tag="in_block_threshold", input_type=Int(optional=True), prefix="--block_threshold", doc=InputDocumentation(doc="phase block threshold, default = 200000")), ToolInput(tag="in_block_len_use", input_type=Int(optional=True), prefix="--block_len_use", doc=InputDocumentation(doc="phase block len threshold, default = 100000\n")), ToolInput(tag="in_x_zhou_one_five_atcs_dot_stanford_dot_edu", input_type=Int(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aquila_Stlfr_Step1_V0_1_0().translate("wdl", allow_empty_container=True)


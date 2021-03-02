from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Directory, File

Aquila_Stlfr_Assembly_Based_Variants_Call_V0_1_0 = CommandToolBuilder(tool="Aquila_stLFR_assembly_based_variants_call", base_command=["Aquila_stLFR_assembly_based_variants_call"], inputs=[ToolInput(tag="in_chr_start", input_type=Int(optional=True), prefix="--chr_start", doc=InputDocumentation(doc="chromosome start from, default = 1")), ToolInput(tag="in_chr_end", input_type=Int(optional=True), prefix="--chr_end", doc=InputDocumentation(doc="chromosome end by, default = 23")), ToolInput(tag="in_var_size", input_type=Int(optional=True), prefix="--var_size", doc=InputDocumentation(doc="variant size, cut off size for indel and SV, default =\n1")), ToolInput(tag="in_all_regions_flag", input_type=Int(optional=True), prefix="--all_regions_flag", doc=InputDocumentation(doc="1 is for variants calling in all regions (including\nsome regions with haploid assemblies), default = 0 for\ndiploid regions")), ToolInput(tag="in_clean_flag", input_type=Int(optional=True), prefix="--clean_flag", doc=InputDocumentation(doc="1 for cleaning all intermediate files, default = 0:\nkeep all intermediate files")), ToolInput(tag="in_num_of_threads", input_type=Int(optional=True), prefix="--num_of_threads", doc=InputDocumentation(doc="number of threads, default = 1")), ToolInput(tag="in_assembly_dir", input_type=Directory(optional=True), prefix="--assembly_dir", doc=InputDocumentation(doc="Required parameter, folder to store Aquila assembly\nresults at Aquila assembly steps")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out_dir", doc=InputDocumentation(doc="Directory to store outputs, default =\n./Aquila_Variant_Results")), ToolInput(tag="in_ref_file", input_type=File(optional=True), prefix="--ref_file", doc=InputDocumentation(doc="Required parameter, reference fasta file, run\n./install.sh to dowload GRCh38 human reference fasta\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aquila_Stlfr_Assembly_Based_Variants_Call_V0_1_0().translate("wdl", allow_empty_container=True)


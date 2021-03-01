from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Array, Directory, Int

Vcf_To_Matrix_V0_1_0 = CommandToolBuilder(tool="vcf_to_matrix", base_command=["vcf_to_matrix"], inputs=[ToolInput(tag="in_mode", input_type=String(optional=True), prefix="--mode", doc=InputDocumentation(doc="Data passing mode, must be set to 'commandline' or\n'xml'.")), ToolInput(tag="in_reference_fast_a", input_type=File(optional=True), prefix="--reference-fasta", doc=InputDocumentation(doc="Path to input reference fasta file.")), ToolInput(tag="in_reference_dups", input_type=File(optional=True), prefix="--reference-dups", doc=InputDocumentation(doc="Path to input reference dups file.")), ToolInput(tag="in_input_files", input_type=Array(t=String(), optional=True), prefix="--input-files", doc=InputDocumentation(doc="Path to input VCF/fasta files for matrix conversion.")), ToolInput(tag="in_matrix_folder", input_type=Directory(optional=True), prefix="--matrix-folder", doc=InputDocumentation(doc="Name of folder to write output matries to.")), ToolInput(tag="in_stats_folder", input_type=Directory(optional=True), prefix="--stats-folder", doc=InputDocumentation(doc="Name of folder to write statistics files to.")), ToolInput(tag="in_minimum_coverage", input_type=String(optional=True), prefix="--minimum-coverage", doc=InputDocumentation(doc="Minimum coverage depth at a position.")), ToolInput(tag="in_minimum_proportion", input_type=String(optional=True), prefix="--minimum-proportion", doc=InputDocumentation(doc="Minimum proportion of reads that must match the call\nat a position.")), ToolInput(tag="in_num_threads", input_type=Int(optional=True), prefix="--num-threads", doc=InputDocumentation(doc="Number of threads to use when processing input.")), ToolInput(tag="in_d_to_file", input_type=File(optional=True), prefix="--dto-file", doc=InputDocumentation(doc="Path to a matrix_dto XML file that defines all the\nparameters.\n"))], outputs=[ToolOutput(tag="out_matrix_folder", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_matrix_folder", type_hint=File()), doc=OutputDocumentation(doc="Name of folder to write output matries to."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcf_To_Matrix_V0_1_0().translate("wdl", allow_empty_container=True)


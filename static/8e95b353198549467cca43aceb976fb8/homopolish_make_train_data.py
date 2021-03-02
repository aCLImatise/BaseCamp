from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Float, Boolean

Homopolish_Make_Train_Data_V0_1_0 = CommandToolBuilder(tool="homopolish_make_train_data", base_command=["homopolish", "make_train_data"], inputs=[ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="[REQUIRED] True reference aligned to assembly genome.\nInclude labels in output.")), ToolInput(tag="in_assembly", input_type=File(optional=True), prefix="--assembly", doc=InputDocumentation(doc="[REQUIRED] Path to a assembly genome.")), ToolInput(tag="in_sketch_path", input_type=File(optional=True), prefix="--sketch_path", doc=InputDocumentation(doc="Path to a mash sketch file.")), ToolInput(tag="in_genus", input_type=String(optional=True), prefix="--genus", doc=InputDocumentation(doc="Genus name")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use. [1]")), ToolInput(tag="in_output_dir", input_type=File(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="Path to the output directory. [output]")), ToolInput(tag="in_mash_threshold", input_type=Float(optional=True), prefix="--mash_threshold", doc=InputDocumentation(doc="Mash output threshold. [0.95]")), ToolInput(tag="in_download_contig_nums", input_type=Int(optional=True), prefix="--download_contig_nums", doc=InputDocumentation(doc="How much contig to download from NCBI. [20]")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Keep the information of every contig after mash, such\nas homologous sequences and its identity infomation.\n[no]")), ToolInput(tag="in_mash_screen", input_type=Boolean(optional=True), prefix="--mash_screen", doc=InputDocumentation(doc="Use mash screen. [mash dist]")), ToolInput(tag="in_meta", input_type=Boolean(optional=True), prefix="--meta", doc=InputDocumentation(doc="Your assembly genome is metagenome. [no]"))], outputs=[ToolOutput(tag="out_output_dir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Path to the output directory. [output]"))], container="quay.io/biocontainers/homopolish:0.0.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Homopolish_Make_Train_Data_V0_1_0().translate("wdl")


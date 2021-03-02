from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String, Int, Boolean

Deepac_Gwpa_Ntcontribs_V0_1_0 = CommandToolBuilder(tool="deepac_gwpa_ntcontribs", base_command=["deepac", "gwpa", "ntcontribs"], inputs=[ToolInput(tag="in_model", input_type=File(optional=True), prefix="--model", doc=InputDocumentation(doc="Model file (.h5)")), ToolInput(tag="in_dir_fragmented_genomes", input_type=Directory(optional=True), prefix="--dir-fragmented-genomes", doc=InputDocumentation(doc="Directory containing the fragmented genomes (.fasta)")), ToolInput(tag="in_genomes_dir", input_type=Directory(optional=True), prefix="--genomes-dir", doc=InputDocumentation(doc="Directory containing genomes (.genome)")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_ref_mode", input_type=String(optional=True), prefix="--ref-mode", doc=InputDocumentation(doc="Modus to calculate reference sequences")), ToolInput(tag="in_train_data", input_type=String(optional=True), prefix="--train-data", doc=InputDocumentation(doc="Train data (.npy), necessary to calculate reference\nsequences if ref_mode is 'GC'")), ToolInput(tag="in_ref_seqs", input_type=String(optional=True), prefix="--ref-seqs", doc=InputDocumentation(doc="User provided reference sequences (.fasta) if ref_mode\nis 'own_ref_file'")), ToolInput(tag="in_read_length", input_type=Int(optional=True), prefix="--read-length", doc=InputDocumentation(doc="Fragment length")), ToolInput(tag="in_seq_chunk", input_type=Int(optional=True), prefix="--seq-chunk", doc=InputDocumentation(doc="Sequence chunk size. Decrease for lower memory usage.")), ToolInput(tag="in_gradient", input_type=Boolean(optional=True), prefix="--gradient", doc=InputDocumentation(doc="Use Integrated Gradients instead of DeepLIFT.")), ToolInput(tag="in_no_check", input_type=Boolean(optional=True), prefix="--no-check", doc=InputDocumentation(doc="Disable additivity check."))], outputs=[ToolOutput(tag="out_out_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory"))], container="quay.io/biocontainers/deepac:0.13.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Gwpa_Ntcontribs_V0_1_0().translate("wdl")


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory

Deepac_Gwpa_Genomemap_V0_1_0 = CommandToolBuilder(tool="deepac_gwpa_genomemap", base_command=["deepac", "gwpa", "genomemap"], inputs=[ToolInput(tag="in_dir_fragmented_genomes", input_type=Directory(optional=True), prefix="--dir-fragmented-genomes", doc=InputDocumentation(doc="Directory containing the fragmented genomes (.fasta)")), ToolInput(tag="in_dir_fragmented_genomes_preds", input_type=Directory(optional=True), prefix="--dir-fragmented-genomes-preds", doc=InputDocumentation(doc="Directory containing the predictions (.npy) of the\nfragmented genomes")), ToolInput(tag="in_genomes_dir", input_type=Directory(optional=True), prefix="--genomes-dir", doc=InputDocumentation(doc="Directory containing genomes (.genome)")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Output directory\n"))], outputs=[ToolOutput(tag="out_out_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory\n"))], container="quay.io/biocontainers/deepac:0.13.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Gwpa_Genomemap_V0_1_0().translate("wdl")


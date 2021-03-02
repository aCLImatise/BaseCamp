from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Directory, Boolean

Circexplorer2_Align_V0_1_0 = CommandToolBuilder(tool="CIRCexplorer2_align", base_command=["CIRCexplorer2", "align"], inputs=[ToolInput(tag="in_gtf", input_type=File(optional=True), prefix="--gtf", doc=InputDocumentation(doc="Annotation GTF file.")), ToolInput(tag="in_genome", input_type=File(optional=True), prefix="--genome", doc=InputDocumentation(doc="Genome fasta file.")), ToolInput(tag="in_bowtie_one", input_type=Int(optional=True), prefix="--bowtie1", doc=InputDocumentation(doc="Index files for Bowtie1 (used for TopHat-Fusion).")), ToolInput(tag="in_bowtie_two", input_type=Int(optional=True), prefix="--bowtie2", doc=InputDocumentation(doc="Index files for Bowtie2 (used for TopHat2).")), ToolInput(tag="in_thread", input_type=Int(optional=True), prefix="--thread", doc=InputDocumentation(doc="Running threads. [default: 10]")), ToolInput(tag="in_fast_q", input_type=File(optional=True), prefix="--fastq", doc=InputDocumentation(doc="Input file.")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="Output directory. [default: alignment]")), ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="Output file.\n[default: back_spliced_junction.bed]")), ToolInput(tag="in_bw", input_type=Boolean(optional=True), prefix="--bw", doc=InputDocumentation(doc="Create BigWig file.")), ToolInput(tag="in_scale", input_type=Boolean(optional=True), prefix="--scale", doc=InputDocumentation(doc="Scale to HPB.")), ToolInput(tag="in_skip_top_hat", input_type=Boolean(optional=True), prefix="--skip-tophat", doc=InputDocumentation(doc="Skip TopHat mapping.")), ToolInput(tag="in_skip_top_hat_fusion", input_type=Boolean(optional=True), prefix="--skip-tophat-fusion", doc=InputDocumentation(doc="Skip TopHat-Fusion mapping."))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output directory. [default: alignment]")), ToolOutput(tag="out_bed", output_type=File(optional=True), selector=InputSelector(input_to_select="in_bed", type_hint=File()), doc=OutputDocumentation(doc="Output file.\n[default: back_spliced_junction.bed]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Circexplorer2_Align_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File

Mason_Genome_V0_1_0 = CommandToolBuilder(tool="mason_genome", base_command=["mason_genome"], inputs=[ToolInput(tag="in_version_check", input_type=Boolean(optional=True), prefix="--version-check", doc=InputDocumentation(doc="Turn this option off to disable version update notifications of the\napplication. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Set verbosity to a minimum.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Enable verbose output.")), ToolInput(tag="in_very_verbose", input_type=Boolean(optional=True), prefix="--very-verbose", doc=InputDocumentation(doc="Enable very verbose output.")), ToolInput(tag="in_contig_length", input_type=Int(optional=True), prefix="--contig-length", doc=InputDocumentation(doc="of INTEGER's\nLength of the contig to simulate. Give one -l value for each contig\nto simulate. In range [1..inf].")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="The seed to use for the random number generator. Default: 0.")), ToolInput(tag="in_out_file", input_type=File(optional=True), prefix="--out-file", doc=InputDocumentation(doc="Output file. Valid filetypes are: .sam[.*], .raw[.*], .frn[.*],\n.fq[.*], .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*],\n.fa[.*], and .bam, where * is any of the following extensions: gz\nand bgzf for transparent (de)compression."))], outputs=[ToolOutput(tag="out_out_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_file", type_hint=File()), doc=OutputDocumentation(doc="Output file. Valid filetypes are: .sam[.*], .raw[.*], .frn[.*],\n.fq[.*], .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*],\n.fa[.*], and .bam, where * is any of the following extensions: gz\nand bgzf for transparent (de)compression."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mason_Genome_V0_1_0().translate("wdl", allow_empty_container=True)


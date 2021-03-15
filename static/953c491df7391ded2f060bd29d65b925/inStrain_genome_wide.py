from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Instrain_Genome_Wide_V0_1_0 = CommandToolBuilder(tool="inStrain_genome_wide", base_command=["inStrain", "genome_wide"], inputs=[ToolInput(tag="in_scaffold_bin_be", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[STB [STB ...]], --stb [STB [STB ...]]\nScaffold to bin. This can be a file with each line\nlisting a scaffold and a bin name, tab-seperated. This\ncan also be a space-seperated list of .fasta files,\nwith one genome per .fasta file. If nothing is\nprovided, all scaffolds will be treated as belonging\nto the same genome (default: [])")), ToolInput(tag="in_is", input_type=String(optional=True), prefix="--IS", doc=InputDocumentation(doc="an inStrain profile object (default: None)")), ToolInput(tag="in_store_everything", input_type=Boolean(optional=True), prefix="--store_everything", doc=InputDocumentation(doc="Store gene sequences in the IS object (default: False)")), ToolInput(tag="in_mm_level", input_type=Boolean(optional=True), prefix="--mm_level", doc=InputDocumentation(doc="Create output files on the mm level (see documentation\nfor info) (default: False)")), ToolInput(tag="in_skip_mm_profiling", input_type=Boolean(optional=True), prefix="--skip_mm_profiling", doc=InputDocumentation(doc="Dont perform analysis on an mm level; saves RAM and\ntime; impacts plots and raw_data (default: False)")), ToolInput(tag="in_processes", input_type=Int(optional=True), prefix="--processes", doc=InputDocumentation(doc="Number of processes to use (default: 6)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Make extra debugging output (default: False)")), ToolInput(tag="in_stb", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/instrain:1.5.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Instrain_Genome_Wide_V0_1_0().translate("wdl")


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Array, Boolean, Int

Phyluce_Probe_Slice_Sequence_From_Genomes_V0_1_0 = CommandToolBuilder(tool="phyluce_probe_slice_sequence_from_genomes", base_command=["phyluce_probe_slice_sequence_from_genomes"], inputs=[ToolInput(tag="in_conf", input_type=File(optional=True), prefix="--conf", doc=InputDocumentation(doc="Path to the configuration file")), ToolInput(tag="in_last_z", input_type=File(optional=True), prefix="--lastz", doc=InputDocumentation(doc="Path to the directory containing LASTZ results")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path to the output directory for storing FASTA files")), ToolInput(tag="in_name_pattern", input_type=String(optional=True), prefix="--name-pattern", doc=InputDocumentation(doc="An alternate name pattern to transform the conf entry\ninto")), ToolInput(tag="in_probe_prefix", input_type=String(optional=True), prefix="--probe-prefix", doc=InputDocumentation(doc="The prefix (e.g. 'uce-') added to all probes designed")), ToolInput(tag="in_probe_regex", input_type=String(optional=True), prefix="--probe-regex", doc=InputDocumentation(doc="The regular expression to use for matching probes")), ToolInput(tag="in_exclude", input_type=Array(t=String(), optional=True), prefix="--exclude", doc=InputDocumentation(doc="Species to exclude from genome slicing")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use")), ToolInput(tag="in_contig_orient", input_type=Boolean(optional=True), prefix="--contig_orient", doc=InputDocumentation(doc="Check orientation by contigs versus probes - useful\nfor multi-species probe sets")), ToolInput(tag="in_flank", input_type=String(optional=True), prefix="--flank", doc=InputDocumentation(doc="The amount of flanking sequence to add to each match")), ToolInput(tag="in_probes", input_type=Int(optional=True), prefix="--probes", doc=InputDocumentation(doc="The probe length to use"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Path to the output directory for storing FASTA files"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Probe_Slice_Sequence_From_Genomes_V0_1_0().translate("wdl", allow_empty_container=True)


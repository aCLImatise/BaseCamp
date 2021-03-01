from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String, File

Drep_Choose_V0_1_0 = CommandToolBuilder(tool="dRep_choose", base_command=["dRep", "choose"], inputs=[ToolInput(tag="in_processors", input_type=Int(optional=True), prefix="--processors", doc=InputDocumentation(doc="threads (default: 6)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="make extra debugging output (default: False)")), ToolInput(tag="in_completeness_weight", input_type=Int(optional=True), prefix="--completeness_weight", doc=InputDocumentation(doc="completeness weight (default: 1)")), ToolInput(tag="in_contamination_weight", input_type=Int(optional=True), prefix="--contamination_weight", doc=InputDocumentation(doc="contamination weight (default: 5)")), ToolInput(tag="in_strain_heterogeneity_weight", input_type=Int(optional=True), prefix="--strain_heterogeneity_weight", doc=InputDocumentation(doc="strain heterogeneity weight (default: 1)")), ToolInput(tag="in_n_five_zero_weight", input_type=Int(optional=True), prefix="--N50_weight", doc=InputDocumentation(doc="weight of log(genome N50) (default: 0.5)")), ToolInput(tag="in_size_weight", input_type=Int(optional=True), prefix="--size_weight", doc=InputDocumentation(doc="weight of log(genome size) (default: 0)")), ToolInput(tag="in_check_m_method", input_type=String(optional=True), prefix="--checkM_method", doc=InputDocumentation(doc="Either lineage_wf (more accurate) or taxonomy_wf\n(faster) (default: lineage_wf)")), ToolInput(tag="in_genome_info", input_type=File(optional=True), prefix="--genomeInfo", doc=InputDocumentation(doc="location of .csv file containing quality information\non the genomes. Must contain: ['genome'(basename of\n.fasta file of that genome), 'completeness'(0-100\nvalue for completeness of the genome),\n'contamination'(0-100 value of the contamination of\nthe genome)] (default: None)")), ToolInput(tag="in_ignore_genome_quality", input_type=Boolean(optional=True), prefix="--ignoreGenomeQuality", doc=InputDocumentation(doc="Don't run checkM or do any quality filtering. NOT\nRECOMMENDED! This is useful for use with\nbacteriophages or eukaryotes or things where checkM\nscoring does not work. Will only choose genomes based\non length and N50 (default: False)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drep_Choose_V0_1_0().translate("wdl", allow_empty_container=True)


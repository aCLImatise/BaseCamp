from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Float, Int, Boolean

Simulate_V0_1_0 = CommandToolBuilder(tool="simulate", base_command=["simulate"], inputs=[ToolInput(tag="in_vcf", input_type=File(optional=True), prefix="--vcf", doc=InputDocumentation(doc="(required)\nName of input VCF file")), ToolInput(tag="in_sample_map", input_type=File(optional=True), prefix="--sample-map", doc=InputDocumentation(doc="(required)\nSample subpop mapping file - also selects which samples will be used for simulation")), ToolInput(tag="in_genetic_map", input_type=File(optional=True), prefix="--genetic-map", doc=InputDocumentation(doc="(required)\nGenetic map file (required)")), ToolInput(tag="in_output_basename", input_type=String(optional=True), prefix="--output-basename", doc=InputDocumentation(doc="(required)\nBasename (prefix) for output files (required)")), ToolInput(tag="in_growth_rate", input_type=Float(optional=True), prefix="--growth-rate", doc=InputDocumentation(doc="Growth rate of population per generation (1 = no growth, 1.5 = 50% increase per generation, etc.)")), ToolInput(tag="in_maximum_size", input_type=Int(optional=True), prefix="--maximum-size", doc=InputDocumentation(doc="Stop growing population when it reaches specified size")), ToolInput(tag="in_chromosome", input_type=File(optional=True), prefix="--chromosome", doc=InputDocumentation(doc="(required)\nChromosome to select from the VCF file")), ToolInput(tag="in_generations", input_type=Int(optional=True), prefix="--generations", doc=InputDocumentation(doc="Number of generations to simulate random mating admixture")), ToolInput(tag="in_make_r_ils", input_type=Boolean(optional=True), prefix="--make-rils", doc=InputDocumentation(doc="After first generation of random mating, make recombinant inbred lines by selfing")), ToolInput(tag="in_phasing_switch", input_type=Float(optional=True), prefix="--phasing-switch", doc=InputDocumentation(doc="introduce phasing switches at this rate. verification data is not switched")), ToolInput(tag="in_random_seed", input_type=Int(optional=True), prefix="--random-seed", doc=InputDocumentation(doc="Seed value for random number generation - integer value (maybe specified inhexadecimal by preceeding with 0x), or the string 'clock' to seed with the current system time.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simulate_V0_1_0().translate("wdl", allow_empty_container=True)


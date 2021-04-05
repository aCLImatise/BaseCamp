from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Smartmap_V0_1_0 = CommandToolBuilder(tool="SmartMap", base_command=["SmartMap"], inputs=[ToolInput(tag="in_genome_length_file", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc=": Genome length file listing all chromosomes and lengths. Chromosomes will appear in this order in output file.")), ToolInput(tag="in_output_prefix_used", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc=": Output prefix used for output bedgraph and log files.")), ToolInput(tag="in_number_iterations_default", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc=": Number of iterations. Default 1.")), ToolInput(tag="in_maximum_number_alignments", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc=": Maximum number of alignments for a read to be processed. Default 50.")), ToolInput(tag="in_minimum_score_bowtie", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc=": Minimum score for Bowtie2 display. Default 0 (unscored).")), ToolInput(tag="in_n_nfold_crossvalidation", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": N for N-fold cross-validation. Default 1 (no cross-validation).")), ToolInput(tag="in_flag_continuous_output", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc=": Flag for continuous output bedgraphs. Default off.")), ToolInput(tag="in_flag_mode_default", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc=": Flag for strand-specific mode. Default off.")), ToolInput(tag="in_flag_read_output", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc=": Flag for read output mode with weights. Default off.")), ToolInput(tag="in_rate_fitting_reweighting", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc=": Rate of fitting in reweighting. Default 1."))], outputs=[], container="quay.io/biocontainers/smartmap:1.0.0--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smartmap_V0_1_0().translate("wdl")


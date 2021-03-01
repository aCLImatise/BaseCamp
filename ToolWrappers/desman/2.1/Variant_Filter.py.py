from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, Float, String, File

Variant_Filter_Py_V0_1_0 = CommandToolBuilder(tool="Variant_Filter.py", base_command=["Variant_Filter.py"], inputs=[ToolInput(tag="in_binomial_loge_likelihood", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[FILTER_VARIANTS], --filter_variants [FILTER_VARIANTS]\nbinomial loge likelihood species p-value threshold for\ninitial filtering as chi2")), ToolInput(tag="in_specifies_value_", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="[MAX_QVALUE], --max_qvalue [MAX_QVALUE]\nspecifies q value cut-off for variant defaults 1.0e-3")), ToolInput(tag="in_specifies_minimum_defaults", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[MIN_VARIANT_FREQ], --min_variant_freq [MIN_VARIANT_FREQ]\nspecifies minimum variant frequency defaults 0.01")), ToolInput(tag="in_min_coverage", input_type=Int(optional=True), prefix="--min_coverage", doc=InputDocumentation(doc="minimum coverage for sample to be included defaults\n5.0")), ToolInput(tag="in_outlier_thresh", input_type=Float(optional=True), prefix="--outlier_thresh", doc=InputDocumentation(doc="threshold for COG filtering on median coverage outlier\ndefaults to 2.0")), ToolInput(tag="in_sample_frac", input_type=String(optional=True), prefix="--sample_frac", doc=InputDocumentation(doc="fraction of samples with COG coverage exceeding median\noutlier for removal")), ToolInput(tag="in_output_stub", input_type=File(optional=True), prefix="--output_stub", doc=InputDocumentation(doc="string specifying file stubs")), ToolInput(tag="in_optimise_p", input_type=Boolean(optional=True), prefix="--optimiseP", doc=InputDocumentation(doc="optimise proportions in likelihood ratio test default")), ToolInput(tag="in_random_seed", input_type=Int(optional=True), prefix="--random_seed", doc=InputDocumentation(doc="specifies seed for numpy random number generator\ndefaults to 23724839\n")), ToolInput(tag="in_false", input_type=String(), position=0, doc=InputDocumentation(doc="-c, --cog_filter      whether to apply COG filtering default false"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Variant_Filter_Py_V0_1_0().translate("wdl", allow_empty_container=True)


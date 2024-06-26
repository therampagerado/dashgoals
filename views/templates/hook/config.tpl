{**
 * Copyright (C) 2017-2024 thirty bees
 * Copyright (C) 2007-2016 PrestaShop SA
 *
 * thirty bees is an extension to the PrestaShop software by PrestaShop SA.
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/afl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@thirtybees.com so we can send you a copy immediately.
 *
 * @author    thirty bees <modules@thirtybees.com>
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2017-2024 thirty bees
 * @copyright 2007-2016 PrestaShop SA
 * @license   Academic Free License (AFL 3.0)
 * PrestaShop is an internationally registered trademark of PrestaShop SA.
 *}

<section id="dashgoals_config" class="dash_config hide">
  <header><i class="icon-wrench"></i> {l s='Configuration' mod='dashgoals'}</header>
  <form class="defaultForm form-horizontal" method="post"
        action="{$link->getAdminLink('AdminDashboard')|escape:'html':'UTF-8'}">
    <table class="table table-condensed table-striped table-bordered">
      <thead>
        <tr>
          <th class="fixed-width-md">{$goals_year}</th>
          <th class="fixed-width-md">{l s='Traffic' mod='dashgoals'}</th>
          <th class="fixed-width-md">{l s='Conversion Rate' mod='dashgoals'}</th>
          <th class="fixed-width-lg">{l s='Average Cart Value' mod='dashgoals'}</th>
          <th>{l s='Sales' mod='dashgoals'}</th>
        </tr>
      </thead>
      <tbody>
        {foreach $goals_months as $month}
          <tr>
            <td>
              {$month.label}
            </td>
            <td>
              <div class="input-group">
                <input id="dashgoals_traffic_{$month@key}" name="dashgoals_traffic_{$month@key}"
                       class="dashgoals_config_input form-control"
                       value="{$month.values.traffic|intval}"/>
              </div>
            </td>
            <td>
              <div class="input-group">
                <input id="dashgoals_conversion_{$month@key}" name="dashgoals_conversion_{$month@key}"
                       class="dashgoals_config_input form-control"
                       value="{$month.values.conversion|floatval}"/>
                <span class="input-group-addon">%</span>
              </div>
            </td>
            <td>
              <div class="input-group">
                <span class="input-group-addon">{$currency->iso_code|escape}</span>
                <input id="dashgoals_avg_cart_value_{$month@key}" name="dashgoals_avg_cart_value_{$month@key}"
                       class="dashgoals_config_input form-control"
                       value="{$month.values.avg_cart_value|intval}"/>
              </div>
            </td>
            <td id="dashgoals_sales_{$month@key}" class="dashgoals_sales">
            </td>
          </tr>
        {/foreach}
      </tbody>
    </table>
    <div class="panel-footer">
      <button class="btn btn-default pull-right" name="submitDashGoals" type="submit"><i
                class="process-icon-save"></i> {l s='Save' mod='dashgoals'}</button>
    </div>
  </form>
</section>
